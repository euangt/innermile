class EventsController < ApplicationController
  before_action :find_business, only: [:new, :create, :edit, :update, :destroy]
  def index
    @events = policy_scope(Event)
  end

  def new
    @event = Event.new
    authorize @event
  end

  def create
    @event = Event.new(event_params)
    authorize @event
    @event.business = @business
    if @event.save
      redirect_to business_path(@business)
    else
      render :new
    end
  end

  def edit
    @event = Event.find(params[:id])
    authorize @event
  end

  def update
    @event = Event.find(params[:id])
    authorize @eve
    if @event.update(event_params)
      redirect_to business_path(@business)
    else  
      render :edit 
    end
  end

  def destroy
    @event = Event.find(params[:id])
    authorize @event
    @event.destroy
    redirect_to business_path(@business, anchor: "recent_posts")
  end

  private 

  def find_business
    @business = Business.find(params[:business_id])
  end

  def event_params
    params.require(:event).permit(:event_name, :description, :business_id, :time, :date, :location)
  end
end
