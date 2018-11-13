class ReservationsController < ApplicationController

  before_action :authenticate_user,  only: [:index]

  def index
    @reservations = current_user.reservations
    # @reservationEvents = Event.includes(:reservations).where("reservations.user_id" => current_user.id)
    render json: current_user.reserved_events, include: [:venue]
    
  end

  def create
    rparams = reservation_params
    rparams[:user_id] = current_user.id
    # eparams[:date_time] = '2018-11-17 19:00:00'
    @reservation = Reservation.create(rparams)
    render json: @reservation
  end

  def update
  end

  private

  def reservation_params
    params.require(:reservation).permit(:id, :no_of_tickets, :is_active, :user_id, :event_id)
  end
end
