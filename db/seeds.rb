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
flatiron = Destination.create(name: "Flatiron", destination_type: "School", latitude: 39.758592, longitude: -105.007217, image_url: 'wework.png')
alamo = Destination.create(name: "Alamo Draft House", destination_type: "Bar", latitude: 39.740788, longitude: -105.042561, image_url: 'alamo.png')
trader_joes = Destination.create(name: "Trader Joes", destination_type: "Store", latitude: 39.726848, longitude: -104.982743, image_url: 'traders.png')
linger = Destination.create(name: "Linger", destination_type: "Restaurant", image_url: 'linger.jpg')
wilderness_exchange = Destination.create(name: "Wilderness Exchange", destination_type: "Store", image_url: 'wilderness.jpg')
joyride = Destination.create(name: "Joyride", destination_type: "Bar", image_url: 'joyride.jpg')
avanti = Destination.create(name: "Avanti", destination_type: "Restaurant", image_url: 'avanti.jpg')
carbon = Destination.create(name: "Carbon", destination_type: "Restaurant", image_url: 'carbon.jpg')
forest_room_five = Destination.create(name: "Forest Room Five", destination_type: "Bar", image_url: 'forest.jpg')
aquarium = Destination.create(name: "Denver Aquarium", destination_type: "Museum", image_url: 'aquarium.jpg')

#parking locations
central_15_NW = ParkingLocation.create(name: "Central Street and 15th, Northwest", latitude: 39.757958, longitude: -105.009829, image_url: 'central.png')
conejos_steward_s = ParkingLocation.create(name: "Conejos and Steward, South", latitude: 39.741520, longitude: -105.042417, image_url: 'conejo.png')
logan_7_w = ParkingLocation.create(name: "Logan and 7th, West", latitude: 39.726752, longitude: -104.982377, image_url: 'logan.png')
central_15_SW = ParkingLocation.create(name: "Central Street and 15th, Southwest", latitude: 39.757958, longitude: -105.009829, image_url: 'central.png')
platte_20_n = ParkingLocation.create(name: "Platte and 20th, North", image_url: 'platte_20.png')
platte_20_s = ParkingLocation.create(name: "Platte and 20th, South", image_url: 'platte_20.png')
platte_15_w = ParkingLocation.create(name: "Platte and 15th, West", image_url: 'platte_15.png')
osage_34_e = ParkingLocation.create(name: "Osage and 33rd, East", image_url: 'osage_34.png')
vallejo_30_n = ParkingLocation.create(name: "Vallejo and 30th, North", image_url: 'vallejo_30.png')


#parking events
kari_school = ParkingEvent.create(day: "Monday", user: kari, destination: flatiron, parking_location: central_15_NW, ease_rating: 4, safety_rating: 5, time_spent: 8, walkability_rating: 4, notes: "Downhill to your destination, uphill on the way back")
kari_museum = ParkingEvent.create(day: "Saturday", user: kari, destination: aquarium, parking_location: platte_15_w, ease_rating: 3, safety_rating: 3, time_spent: 4, walkability_rating: 3, notes: "Not enough pedestrian crosswalks for my daughter and me!")
kari_school_2 = ParkingEvent.create(day: "Friday", user: kari, destination: flatiron, parking_location: platte_20_n, ease_rating: 5, safety_rating: 4, time_spent: 8, walkability_rating: 5, notes: "Wish I got this spot every fucking day.")
kari_linger = ParkingEvent.create(day: "Friday", user: kari, destination: linger, parking_location: osage_34_e, ease_rating: 1, safety_rating: 1, time_spent: 1, walkability_rating: 1, notes: "What the fuck, there's no parking here!")
ParkingEvent.create(day: "Tuesday", user: kari, destination: joyride, parking_location: conejos_steward_s, ease_rating: 2, safety_rating: 4, time_spent: 3, walkability_rating: 3, notes: "Much busier than I thought it would be on a fucking Tuesday night.")
ParkingEvent.create(day: "Monday", user: kari, destination: carbon, parking_location: platte_20_n, ease_rating: 2, safety_rating: 4, time_spent: 1, walkability_rating: 5, notes: "Great spot when you can park here.")
ParkingEvent.create(day: "Friday", user: kari, destination: carbon, parking_location: platte_20_s, ease_rating: 1, safety_rating: 5, time_spent: 1, walkability_rating: 5, notes: "I've gotten lucky with this spot but it is usually busier.")
kevin_school = ParkingEvent.create(day: "Monday", user: kevin, destination: flatiron, parking_location: central_15_NW, ease_rating: 1, safety_rating: 4, time_spent: 9, walkability_rating: 3, notes: "I can never find a spot!!")
jack_bar = ParkingEvent.create(day: "Thursday", user: jack, destination: alamo, parking_location: conejos_steward_s, ease_rating: 3, safety_rating: 2, time_spent: 3, walkability_rating: 5, notes: "Little sketchy late at night.")
jack_bar_2 = ParkingEvent.create(day: "Thursday", user: jack, destination: alamo, parking_location: conejos_steward_s, ease_rating: 1, safety_rating: 4, time_spent: 5, walkability_rating: 2, notes: "Better this time.")
jack_bar_3 = ParkingEvent.create(day: "Thursday", user: jack, destination: alamo, parking_location: central_15_NW, ease_rating: 1, safety_rating: 4, time_spent: 5, walkability_rating: 2, notes: "Took forever to find a spot here!")
ParkingEvent.create(day: "Thursday", user: jack, destination: wilderness_exchange, parking_location: platte_15_w, ease_rating: 2, safety_rating: 4, time_spent: 2, walkability_rating: 2, notes: "Best spot for the area, I believe")
ParkingEvent.create(day: "Thursday", user: jack, destination: flatiron, parking_location: central_15_NW, ease_rating: 1, safety_rating: 4, time_spent: 5, walkability_rating: 2)
ParkingEvent.create(day: "Thursday", user: jack, destination: flatiron, parking_location: central_15_NW, ease_rating: 1, safety_rating: 4, time_spent: 5, walkability_rating: 2)
ParkingEvent.create(day: "Thursday", user: jack, destination: trader_joes, parking_location: conejos_steward_s, ease_rating: 1, safety_rating: 4, time_spent: 5, walkability_rating: 2)
kari_grocery = ParkingEvent.create(day: "Sunday", user: kari, destination: trader_joes, parking_location: logan_7_w, ease_rating: 2, safety_rating: 4, time_spent: 1, walkability_rating: 4)

#limitations
limit1 = Limitation.create(time_limit: 24, cost: 0, sweep_day: "Monday", handicap_accessible: true)
limit2 = Limitation.create(time_limit: 2, cost: 1, sweep_day: "Thursday", handicap_accessible: false)
limit3 = Limitation.create(time_limit: 1, cost: 2, sweep_day: "Wednesday", handicap_accessible: true)
limit4 = Limitation.create(time_limit: 2, cost: 1, sweep_day: "Tuesday", handicap_accessible: true)
limit5 = Limitation.create(time_limit: 2, cost: 0, sweep_day: "Tuesday", handicap_accessible: true)
limit6 = Limitation.create(time_limit: 2, cost: 0, sweep_day: "Friday", handicap_accessible: false)
limit7 = Limitation.create(time_limit: 24, cost: 0, sweep_day: "Monday", handicap_accessible: false)
limit8 = Limitation.create(time_limit: 1, cost: 0, sweep_day: "Monday", handicap_accessible: false)

#location limitations
central_limits = LocationLimitation.create(parking_location: central_15_NW, limitation: limit3)
conejos_limits = LocationLimitation.create(parking_location: conejos_steward_s, limitation: limit2)
logan_limits = LocationLimitation.create(parking_location: logan_7_w, limitation: limit1)
central_sw_limits = LocationLimitation.create(parking_location: central_15_SW, limitation: limit4)
platte_15_w_limits = LocationLimitation.create(parking_location: platte_15_w, limitation: limit4)
platte_20_n_limits = LocationLimitation.create(parking_location: platte_20_n, limitation: limit5)
platte_20_s_limits = LocationLimitation.create(parking_location: platte_20_s, limitation: limit6)
osage_34_e_limits = LocationLimitation.create(parking_location: osage_34_e, limitation: limit8)
vallejo_30_n_limits = LocationLimitation.create(parking_location: vallejo_30_n, limitation: limit7)
