class EventsController < ApplicationController
  def index
    @events = Event.all
    render json: @events
  end
  
  def create
    @event = Event.create(event_parms)
  end

  def update
  end

  private

  def event_params
    params.require(:event).permit(:id, :title, :description, :date_time, :capacity, :has_paid, :user_id, :venue_id)
  end
end
