class User < ApplicationRecord
  has_many :parking_events
  has_many :destinations, through: :parking_events
  has_many :parking_locations, through: :parking_events
end
