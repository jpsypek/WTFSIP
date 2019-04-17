class User < ApplicationRecord
  has_many :parking_events
  has_many :destinations, through: :parking_events
  has_many :parking_locations, through: :parking_events
  validates :first_name, presence: true
  validates :last_name, presence: true

  def most_visited_destination_names
    self.destinations.group(:name).order("count_id DESC").limit(3).count(:id).keys
  end

  def most_visited_destinations
    most_visited_destination_names.map do |destination_name|
      Destination.all.find_by(name: destination_name)
    end
  end

  def most_visited_parking_location(destination)
      user_events = self.parking_events.select do |event|
        event.destination == destination
      end
      parking_spots = user_events.map(&:parking_location)
      parking_spots.group_by(&:name).values.max_by(&:size).first
  end

end
