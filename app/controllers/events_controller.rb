class EventsController < ApplicationController
  def index
    @events = policy_scope(Event)
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
