class EventsController < ApplicationController
  before_action :authenticate_user,  only: [:create]
  
  def index
    @events = Event.all
    # @user_events = current_user.events
    render json: @events, include: [:venue]
  end
  
  def create
    eparams = event_params
    eparams[:user_id] = current_user.id
    eparams[:has_paid] = false
    # eparams[:date_time] = '2018-11-17 19:00:00'
    Event.create(eparams)
  end

  def update
  end

  def destroy
    event = Event.find(params[:id])
    if event.destroy
      render json: { status: 200, msg: 'Event has been deleted.' }
    end
  end

  private

  def event_params
    params.require(:event).permit(:id, :title, :description, :ticket_price ,:date_time, :capacity, :has_paid, :user_id, :venue_id)
  end
 
end
