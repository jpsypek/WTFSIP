class ParkingEvent < ApplicationRecord
  belongs_to :user
  belongs_to :destination
  belongs_to :parking_location
end
