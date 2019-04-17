class ParkingLocationsController < ApplicationController
  before_action :set_parking_location, only: [:show, :create_parking_event]

  def index
    if params[:search_street]
      @parking_locations = ParkingLocation.where("name LIKE ?", "%#{params[:search_street]}%")
      @user = User.find(params[:user_id])
    else
      @parking_locations = ParkingLocation.all
    end
  end

  def show
    @parking_event = ParkingEvent.new
    @destinations = Destination.all
    if params[:user_id]
      @user = User.find(params[:user_id])
    end
  end

  def create_parking_event
    # byebug
    @parking_event = @parking_location.parking_events.build(parking_location_params)
    if @parking_event.save
      @parking_event = ParkingEvent.new
    end
    render :show
  end

  private

  def set_parking_location
    @parking_location = ParkingLocation.find(params[:id])
  end

  def parking_location_params
    params.require(:parking_location).permit(:name, :latitude, :longitude, parking_events_attributes:[:day, :time, :user_id, :destination_id, :parking_location_id, :ease_rating, :safety_rating, :time_spent, :walkability_rating, :notes])
  end
end
