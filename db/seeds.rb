# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ParkingEvent.destroy_all
LocationLimitation.destroy_all
ParkingLocation.destroy_all
User.destroy_all
Limitation.destroy_all
Destination.destroy_all

#users
kari = User.create(first_name: "Kari", last_name: "Ferenczy")
jack = User.create(first_name: "Jack", last_name: "Sypek")
kevin = User.create(first_name: "Kevin", last_name: "Ruggiero")

#destinations
flatiron = Destination.create(name: "Flatiron", destination_type: "School", latitude: 39.758592, longitude: -105.007217)
alamo = Destination.create(name: "Alamo Draft House", destination_type: "Bar", latitude: 39.740788, longitude: -105.042561)
trader_joes = Destination.create(name: "Trader Joes", destination_type: "Store", latitude: 39.726848, longitude: -104.982743)

#parking locations
central_15_NW = ParkingLocation.create(name: "Central Street and 15th, Northwest", latitude: 39.757958, longitude: -105.009829)
conejos_steward_s = ParkingLocation.create(name: "Conejos and Steward, South", latitude: 39.741520, longitude: -105.042417)
logan_7_w = ParkingLocation.create(name: "Logan and 7th, West", latitude: 39.726752, longitude: -104.982377)

#parking events
kari_school = ParkingEvent.create(day: "Monday", user: kari, destination: flatiron, parking_location: central_15_NW, ease_rating: 4, safety_rating: 5, time_spent: 8, walkability_rating: 4, notes: "Downhill to your destination, uphill on the way back")
kevin_school = ParkingEvent.create(day: "Monday", user: kevin, destination: flatiron, parking_location: central_15_NW, ease_rating: 1, safety_rating: 4, time_spent: 9, walkability_rating: 3, notes: "I can never find a spot!!")
jack_bar = ParkingEvent.create(day: "Thursday", user: jack, destination: alamo, parking_location: conejos_steward_s, ease_rating: 3, safety_rating: 2, time_spent: 3, walkability_rating: 5)
jack_bar_2 = ParkingEvent.create(day: "Thursday", user: jack, destination: alamo, parking_location: conejos_steward_s, ease_rating: 1, safety_rating: 4, time_spent: 5, walkability_rating: 2)
jack_bar_3 = ParkingEvent.create(day: "Thursday", user: jack, destination: alamo, parking_location: central_15_NW, ease_rating: 1, safety_rating: 4, time_spent: 5, walkability_rating: 2)
ParkingEvent.create(day: "Thursday", user: jack, destination: flatiron, parking_location: central_15_NW, ease_rating: 1, safety_rating: 4, time_spent: 5, walkability_rating: 2)
ParkingEvent.create(day: "Thursday", user: jack, destination: flatiron, parking_location: central_15_NW, ease_rating: 1, safety_rating: 4, time_spent: 5, walkability_rating: 2)
ParkingEvent.create(day: "Thursday", user: jack, destination: trader_joes, parking_location: conejos_steward_s, ease_rating: 1, safety_rating: 4, time_spent: 5, walkability_rating: 2)
kari_grocery = ParkingEvent.create(day: "Sunday", user: kari, destination: trader_joes, parking_location: logan_7_w, ease_rating: 2, safety_rating: 4, time_spent: 1, walkability_rating: 4)

#limitations
limit1 = Limitation.create(time_limit: 24, cost: 0, sweep_day: "Monday", handicap_accessible: true)
limit2 = Limitation.create(time_limit: 2, cost: 0, sweep_day: "Thursday", handicap_accessible: false)
limit3 = Limitation.create(time_limit: 1, cost: 0.5, sweep_day: "Wednesday", handicap_accessible: true)

#location limitations
central_limits = LocationLimitation.create(parking_location: central_15_NW, limitation: limit3)
conejos_limits = LocationLimitation.create(parking_location: conejos_steward_s, limitation: limit2)
logan_limits = LocationLimitation.create(parking_location: logan_7_w, limitation: limit1)
