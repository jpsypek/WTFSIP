class ParkingLocation < ApplicationRecord
  has_many :location_limitations
  has_many :limitations, through: :location_limitations
  has_many :parking_events
  has_many :users, through: :parking_events
  has_many :destinations, through: :parking_events 
end
