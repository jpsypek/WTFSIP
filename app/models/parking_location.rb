class ParkingLocation < ApplicationRecord
  has_many :location_limitations
  has_many :limitations, through: :location_limitations
  has_many :parking_events
  has_many :users, through: :parking_events
  has_many :destinations, through: :parking_events
  accepts_nested_attributes_for :parking_events

  def average_ease
    ratings = self.parking_events.map{|event| event.ease_rating.to_f}
    average(ratings)
  end

  def average_safety
    ratings = self.parking_events.map {|event| event.safety_rating.to_f}
    average(ratings)
  end

  def average_walkability
    ratings = self.parking_events.map {|event| event.walkability_rating.to_f}
    average(ratings)
  end

  def average(array)
    (array.sum / array.length).round(2)
  end




end
