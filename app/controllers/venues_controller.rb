class VenuesController < ApplicationController
  def index
    @venues = Venues.all
    render json: @venues
  end

  def create
    @venue = Venue.create(venue_params)
  end

  private

  def venue_params
    params.require(:venue).permit(:id, :name, :street_address, :city, :state, :zip_code, :user_id)
  end
end
