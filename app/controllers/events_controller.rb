class EventsController < ApplicationController
  before_action :find_business, only: [:new, :create, :edit, :update, :destroy]
  def index
    @events = policy_scope(Event)
  end

  def new
    @event = Event.new
    authorize @event
  end

  def show
    @event = Event.find(params[:id])
    authorize @event
    @user = current_user
    @marker = 
      {
        lat: @event.latitude,
        lng: @event.longitude,
        id: @event.id
      }

    if current_user
      @home_marker =
       {
          lat: @user.latitude,
          lng: @user.longitude,
          image_url: helpers.asset_url('user_pin_red.png')
        }
    end
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
    authorize @event
    if @event.update(event_params)
      redirect_to business_event_path(@event.business, @event)
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
    params.require(:event).permit(:event_name, :description, :business_id, :time, :date, :location, :event_image)
  end
end
