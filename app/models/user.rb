class User < ApplicationRecord
  has_many :parking_events
  has_many :destinations, through: :parking_events
  has_many :parking_locations, through: :parking_events
  validates :first_name, presence: true
  validates :last_name, presence: true
end
