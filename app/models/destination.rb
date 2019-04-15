class Destination < ApplicationRecord
  has_many :parking_events
  has_many :users, through: :parking_events
  has_many :parking_locations, through: :parking_events
end
