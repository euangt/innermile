class BusinessesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]

  def index
    @user = current_user
    @businesses = policy_scope(Business)
      if params[:query].present?
        @businesses = Business.near(params[:query], 1)
      else
        @businesses = Business.all
      end

      @markers = @businesses.geocoded.map do |business|
        {
          lat: business.latitude,
          lng: business.longitude,
          infoWindow: render_to_string(partial: "info_window", locals: { business: business })
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
    @user = current_user
    @bookmark = @user.bookmarks.where(business_id: @business.id).first
    @post = Post.new
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
