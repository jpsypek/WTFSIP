require 'pry'

class Destination < ApplicationRecord
  has_many :parking_events
  has_many :users, through: :parking_events
  has_many :parking_locations, through: :parking_events

  def query_limitation(attribute, symbol, criteria)
    Limitation.all.where("#{attribute} #{symbol} ?", criteria)
  end

  def get_parking_locations(matches)
    all_locations = matches.map(&:parking_locations).flatten
    all_events = all_locations.map{|loc| loc.parking_events}.flatten
    all_destinations = all_events.select do |event|
      event.destination == self
    end
    all_destinations.map(&:parking_location).uniq
  end

  def filter_handicap(boolean)
    matches = query_limitation("handicap_accessible", "=", boolean)
    get_parking_locations(matches)
  end

  def filter_sweep_day(day)
    matches = query_limitation("sweep_day", "!=", day)
    get_parking_locations(matches)
  end

  def filter_cost(price)
    matches = query_limitation("cost", "<", price)
    get_parking_locations(matches)
    end
  end

  def filter_ease_rating(int)
    matches = query_limitation("ease_rating", "<", int)
    get_parking_locations(matches)
  end

  #do by location for specific destination
  def filter_walkability_rating

  end

  def filter_safety_rating(int)
    matches = query_limitation("safety_rating", ">", int)
    get_parking_locations(matches)
  end

  def filter_time_limit(max_time)
    self.parking_locations.select do |loc|
      loc.limitations.first.time_limit <= max_time
    end
  end

end
