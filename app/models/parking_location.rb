class ParkingLocation < ApplicationRecord
  has_many :location_limitations
  has_many :limitations, through: :location_limitations
  has_many :parking_events
  has_many :users, through: :parking_events
  has_many :destinations, through: :parking_events

  def average_ease
    ratings = self.parking_events.map(&:ease_rating)
    average(ratings)
  end

  def average_safety
    ratings = self.parking_events.map(&:safety_rating)
    average(ratings)
  end

  def average_walkability
    ratings = self.parking_events.map(&:walkability_rating)
    average(ratings)
  end

  def average(array)
    array.sum / array.length
  end


end
