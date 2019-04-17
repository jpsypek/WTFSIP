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
    if false
    else
      @parking_locations = @destination.parking_locations.uniq
    end
  end

  private

  def set_destination
    @destination = Destination.find(params[:id])
  end

  def destination_params
    params.require(:destination).permit(:name, :latitude, :longitude, :destination_type)
  end
end
