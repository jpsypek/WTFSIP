class Limitation < ApplicationRecord
  has_many :location_limitations
  has_many :parking_locations, through: :location_limitations
end
