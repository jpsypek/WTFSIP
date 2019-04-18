class DestinationsController < ApplicationController
  before_action :set_destination, only: [:show]


  def index
    if params[:search_name].length > 0
      @destinations = Destination.where("name LIKE ?", "%#{params[:search_name]}%")
    elsif params[:search_type]
      @destinations = Destination.all.select { |destination| destination.destination_type == params[:search_type]}
    else
      @destinations = Destination.all
    end
  end

  def show
    if params[:time_limit]
      @parking_locations = []
        @parking_locations << @destination.filter_time_limit(params[:time_limit]) unless params[:time_limit] == ""
        @parking_locations << @destination.filter_cost(params[:cost]) unless params[:cost] == ""
        @parking_locations << @destination.filter_sweep_day(params[:sweep_day]) unless params[:sweep_day] == ""
        @parking_locations << @destination.filter_handicap(params[:handicap_accessible]) unless params[:handicap_accessible] == ""
        @parking_locations << @destination.filter_ease_rating(params[:average_ease]) unless params[:average_ease] == ""
        @parking_locations << @destination.filter_safety_rating(params[:average_safety]) unless params[:average_safety] == ""
      @parking_locations = @parking_locations.flatten.uniq
    else
      @parking_locations = @destination.parking_locations.uniq
    end
    @optimal_location = @destination.best_parking_location
    @worst_location = @destination.worst_parking_location
  end

  private

  def set_destination
    @destination = Destination.find(params[:id])
  end

  def destination_params
    params.require(:destination).permit(:name, :latitude, :longitude, :destination_type)
  end


end
