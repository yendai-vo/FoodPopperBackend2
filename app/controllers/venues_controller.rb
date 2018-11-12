class VenuesController < ApplicationController
  def index
    @venues = Venues.all
    render json: @venues
  end

  def create
    vparams = venue_params
    vparams[:user_id] = current_user.id
    @venue = Venue.create(vparams)
    render json: { status: 200, venue: @venue }

  end

  private

  def venue_params
    params.require(:venue).permit(:id, :name, :street_address, :city, :state, :zip_code)
  end
end
