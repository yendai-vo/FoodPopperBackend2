class EventsController < ApplicationController
  before_action :authenticate_user,  only: [:create]
  
  def index
    # @user_events = current_user.events
    # render json: @user_events

    @events = Event.all
    render json: @events, include: [:venue], get_image_url: get_image_url
    
    
    # render json: current_user.reserved_venues
  end
  
  def create
    
    eparams = event_params
    eparams[:user_id] = current_user.id
    eparams[:venue_attributes][:user_id] = current_user.id
    eparams[:has_paid] = true
    # eparams[:date_time] = '2018-11-17 19:00:00'
    Event.create(eparams)
    render json: event, get_image_url: get_image_url
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
    params.require(:event).permit(:id, :title, :description, :ticket_price ,:date_time, :capacity, :has_paid, :user_id, :venue_id, :image, venue_attributes:{})
  end
 
end
