class PostsController < ApplicationController
  before_action :find_business, only: [:create, :destroy]

  def index
    @posts = policy_scope(Post).order(created_at: :desc)
    @business = Business.new
    @user = current_user
    @events = Event.all.order(date: :asc)
    @pg_search_documents = PgSearch.multisearch(params[:q])

    if params[:query].present?
      @address = params[:query]
      @businesses = Business.near(@address, 1)
    else
      @businesses = Business.all
    end

    @markers = @businesses.geocoded.map do |business|
      distance = find_distance(@user, business)
      {
        lat: business.latitude,
        lng: business.longitude,
        infoWindow: render_to_string(partial: "businesses/info_window", locals: { business: business, distance: distance }),
        id: business.id
      }
    end
    if current_user
      @home_marker =
      {
        lat: @user.latitude,
        lng: @user.longitude,
        image_url: helpers.asset_url('user_pin_red.png')
      }
    end
  end

  # def new
  #   @post = Post.new
  #   authorize @post
  # end

  def create
    @post = Post.new(post_params)
    authorize @post
    @user = current_user
    @business.user = @user
    @post.business = @business
    if @post.save
      redirect_to business_path(@business, anchor: "posts")
    else
      render 'businesses/show'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    authorize @post
    @post.destroy
    redirect_to business_path(@business, anchor: "posts")
  end

  def edit
    find_business
    @post = Post.find(params[:id])
    authorize @post
  end

  def update
    find_business
    @post = Post.find(params[:id])
    authorize @post
    if @post.update(post_params)
      redirect_to business_path(@business, anchor: "posts")
    else
      render :edit
    end
  end

  private

  def find_business
    @business = Business.find(params[:business_id])
  end

  def post_params
    params.require(:post).permit(:content, :post_image, :business_id)
  end

  def find_distance(user, business)
    if current_user
      start_coord = [user.longitude, user.latitude]
      end_coord = [business.longitude, business.latitude]
      distance = Geocoder::Calculations.distance_between(start_coord, end_coord)
      distance = distance * 18
      distance = distance.round(0)
    end
  end
end
