class ParkingEventsController < ApplicationController

  def new
    # @parking_event = ParkingEvent.new
    # @parking_location = ParkingLocation.find(params[:id])
  end

  def create
    @parking_event = ParkingEvent.create(parking_event_params)
  end

  private

  def parking_event_params
    params.require(:parking_event).permit(:day, :time, :user_id, :destination_id, :parking_location_id, :ease_rating, :safety_rating, :time_spent, :walkability_rating, :notes)
  end

end
