class ReservationsController < ApplicationController

  before_action :authenticate_user,  only: [:index]

  def index
    @reservations = current_user.reservations
    # @reservationEvents = Event.includes(:reservations).where("reservations.user_id" => current_user.id)
    render json: current_user.reserved_events
  end

  def create
    @reservation = Reservation.create(reservation_params)
  end

  def update
  end

  private

  def reservation_params
    params.require(:reservation).permit(:id, :no_of_tickets, :is_active, :user_id, :event_id)
  end
end
