class BusinessesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]

  def index
    @businesses = policy_scope(Business)
  end

  def new
    @business = Business.new
    authorize @business
  end

  def show
    @business = Business.find(params[:id])
  end

  def edit
    authorize @business
  end

  def update
    authorize @business
    @business.update(business_params)
    redirect_to business_path(@business)
  end

  def destroy
    authorize @business
    @business.destroy
    redirect_to businesses_path
  end

  private

  def business_params
    params.require(:business).permit(:name, :address, :short_bio, :long_bio, :owner_name, :owner_bio, :telephone, :email, :opening_hours, :website_url)
  end
end
