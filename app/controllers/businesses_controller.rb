class BusinessesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @user = current_user
    @categories = Category.all
    @businesses = policy_scope(Business)
      if params[:query].present?
        @address = params[:query]
        @businesses = Business.near(@address, 1)
      else
        @businesses = Business.all
      end

      if params[:category].present?
        @category = Category.find_by_name(params[:category])
        @businesses = @businesses.where(category: @category)
      end

      @markers = @businesses.geocoded.map do |business|
        {
          lat: business.latitude,
          lng: business.longitude,
          infoWindow: render_to_string(partial: "info_window", locals: { business: business })
        }
      end
      if current_user
        @home_marker =
         {
            lat: @user.latitude,
            lng: @user.longitude,
            image_url: helpers.asset_url('user_pin_red.png')

            # infoWindow: render_to_string(partial: "info_window", locals: { business: business })
          }
      end
  end

  def new
    @business = Business.new
    authorize @business
  end

  def create
    @business = Business.new(business_params)
    @business.user = current_user
    authorize @business
    if @business.save!
      redirect_to business_path(@business)
    else
      render :new
    end
  end

  def show
    find_business
    if current_user
      @user = current_user
      @bookmark = @user.bookmarks.where(business_id: @business.id).first
    end
    @post = Post.new
    @posts = @business.posts.order(created_at: :desc)
    authorize @business
  end

  def edit
    find_business
    authorize @business
  end

  def update
    find_business
    authorize @business
    @business.update(business_params)
    redirect_to business_path(@business)
  end

  def destroy
    find_business
    authorize @business
    @business.destroy
    redirect_to businesses_path
  end

  private

  def business_params
    params.require(:business).permit(:name, :address, :short_bio, :long_bio, :owner_name, :owner_bio, :telephone, :email, :opening_hours, :website_url, :avatar, :banner_photo, :owner_photo, business_photos: [])
  end

  def find_business
    @business = Business.find(params[:id])
  end
end
