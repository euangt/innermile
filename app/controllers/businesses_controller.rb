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
end
