class ParkingLocationsController < ApplicationController
  before_action :set_parking_location, only: [:show]

  def index
    if params[:search_street]
      @parking_locations = ParkingLocation.where("name LIKE ?", "%#{params[:search_street]}%")
    else
      @parking_locations = ParkingLocation.all
    end
  end

  def show
  end

  private

  def set_parking_location
    @parking_location = ParkingLocation.find(params[:id])
  end

  def parking_location_params
    params.require(:parking_location).permit(:name, :latitude, :longitude)
  end
end
