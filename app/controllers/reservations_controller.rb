class ReservationsController < ApplicationController
  def index
    @reservations = Reservations.all
    render json: @reservations
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
