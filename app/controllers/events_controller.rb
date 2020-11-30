class EventsController < ApplicationController
  def index
    @events = policy_scope(Event)
  end

  def new
    @event = Event.new
    authorize @event
  end

  def create
    @event = Event.new(post_params)
    authorize @event
    @business.user = current_user
    @event.business = @event
    if @event.save
      redirect_to business_path(@business)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
