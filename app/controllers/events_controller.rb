class EventsController < ApplicationController
  before_action :find_business, only: [:new, :create, :edit, :update, :destroy]
  def index
    @events = policy_scope(Event).order(date: :asc)
  end

  def new
    @event = Event.new
    authorize @event
  end

  def show
    @event = Event.find(params[:id])
    authorize @event
    @user = current_user

    distance = find_distance(@user, @event)

    @marker = [{
        lat: @event.latitude,
        lng: @event.longitude,
        infoWindow: render_to_string(partial: "info_window_event", locals: { event: @event, distance: distance }),
      }]


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

  def find_distance(user, event)
    if current_user
      start_coord = [user.longitude, user.latitude]
      end_coord = [event.longitude, event.latitude]
      distance = Geocoder::Calculations.distance_between(start_coord, end_coord)
      distance = distance * 18
      distance = distance.round(0)
    end
  end
end
