class BusinessesController < ApplicationController

  def index
    @businesses = Business.all
  end

  def new
    @business = Business.new
    authorize @business
  end

  def show
    @business = Business.find(params[:id])
    end
end
