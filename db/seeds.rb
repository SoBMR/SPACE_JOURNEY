# require 'open-uri'

Booking.destroy_all
Flight.destroy_all
Techno.destroy_all
Planet.destroy_all
User.destroy_all

User.create!(email: "test@test.com", password: "azerty")

# API #########

# bodies_url = "https://api.le-systeme-solaire.net/rest/bodies/"
# api_bodies_data = JSON.parse(URI.open(bodies_url).read)
# bodies_array = api_bodies_data['bodies']

# logger les 5 premiers noms
# bodies_array.first(5).each do |body|
  # body est un hash
#   puts body['name']
# end

# bodies_array.select { |e| e['isPlanet'] }

# API #########


##### PLANETS #####

#P1
planet1 = Planet.new(
  name: "Proxima Centauri B",
  description: "Capital: Pelion
  System: Alpha Centauri
  Orbital Body: Proxima Centauri
  Position: 2nd
  Natural Satellites: None
  Diameter: 16 582.8 km
  Gravity: 1.3 g
  Length of day: Constant
  Length of year: 11.186 days
  Atmospheric pressure:  atm
  Atmospheric composition:
  Temperature: -123.1 °C (min), 5 °C (average), 16.8 °C (max)"
)

img_file = "app/assets/images/ProximaCentauri-B.jpg"
file = File.open(img_file)
planet1.photo.attach(io: file, filename: "#{planet1.name}.jpg", content_type: 'image/jpg')

planet1.save!

#P2
planet2 = Planet.new(
  name: "Kepler-22b",
  description: "Capital: Regensburg
  System: Kepler-22
  Orbital Body: Kepler-22
  Position: 2nd
  Natural Satellites: None
  Diameter: 30 580.8 km
  Gravity: 6.3 g
  Length of day: Constant
  Length of year: 289.8 days
  Atmospheric pressure:  atm
  Atmospheric composition:
  Temperature: -11.1 °C (min), 22 °C (average),  33.8°C (max)"
)

img_file = "app/assets/images/Kepler22-B.jpg"
file = File.open(img_file)
planet2.photo.attach(io: file, filename: "#{planet2.name}.jpg", content_type: 'image/jpg')

planet2.save!

#P3
planet3 = Planet.new(
  name: "Gliese 667 Cc",
  description: "Praesent aliquam, enim at fermentum mollis, ligula massa adipiscing nisl, ac euismod nibh nisl eu lectus. Fusce vulputate sem at sapien. Vivamus leo."
)

img_file = "app/assets/images/Gliese667Cc.jpg"
file = File.open(img_file)
planet3.photo.attach(io: file, filename: "#{planet3.name}.jpg", content_type: 'image/jpg')

planet3.save!

#P1 - CPU
planetCPU1 = Planet.new(
  name: "Terra",
  description: "Capital: New York City
  System: SOL
  Orbital Body: Sol
  Position: 3rd
  Natural Satellites: 1 (Luna)
  Diameter: 12 742 km
  Gravity: 1.0 g
  Length of day: 1 ESD (23 hours, 56 minutes)
  Length of year: 365.24 ESD
  Atmospheric pressure: 1.0 atm
  Atmospheric composition: 78.08% nitrogen, 20.95% oxygen, 0.93% argon, 0.04% carbon dioxide, other gases (traces)
  Temperature: -89.2 °C (min), 15 °C (average), 56.7 °C (max)"
)

img_file = "app/assets/images/CPU_Terra.jpg"
file = File.open(img_file)
planetCPU1.photo.attach(io: file, filename: "#{planetCPU1.name}.jpg", content_type: 'image/jpg')

planetCPU1.save!

#P2 - CPU
planetCPU2 = Planet.new(
  name: "Luna",
  description: "Capital: Lovell City
  System: SOL
  Orbital Body: Earth
  Diameter: 3,474.2 km
  Gravity: 0.1654 g
  Length of day: 29.5 Earth days
  Length of year: 27.32 days
  Atmospheric pressure: 10-7 Pa (1 picobar)
  Temperature: -173,15 °C (min), -53,15 °C (average), 116,85 °C (max)"
)

img_file = "app/assets/images/CPU_Luna.png"
file = File.open(img_file)
planetCPU2.photo.attach(io: file, filename: "#{planetCPU2.name}.png", content_type: 'image/png')

planetCPU2.save!

#P3 - CPU
planetCPU3 = Planet.new(
  name: "Mars",
  description: "System: SOL
  Orbital Body: Sol
  Position: 4th
  Natural Satellites: 2 (Phobos and Deimos)
  Diameter: 6,779 km
  Gravity: 0.376 g
  Length of day: 24 hours, 39 minutes
  Length of year: 1.9 years
  Atmospheric pressure: 0.636 kPa
  Atmospheric composition: 95.97% carbon dioxide, 1.93% argon, 1.89% nitrogen
  Temperature: -143 °C (min), -63 °C (average), 35 °C (max)"
)

img_file = "app/assets/images/CPU_Mars.jpg"
file = File.open(img_file)
planetCPU3.photo.attach(io: file, filename: "#{planetCPU3.name}.jpg", content_type: 'image/jpg')

planetCPU3.save!


##### TECHS #####

# T1
tech1 = Techno.new(
  name: "Wormholes",
  description: "Praesent aliquam, enim at fermentum mollis, ligula massa adipiscing nisl, ac euismod nibh nisl eu lectus. Fusce vulputate sem at sapien. Vivamus leo."
)

img_file = "app/assets/images/tech3.jpg"
file = File.open(img_file)
tech1.photo.attach(io: file, filename: "#{tech1.name}.jpg", content_type: 'image/jpg')

tech1.save!

# T2
tech2 = Techno.new(
  name: "Hyper Sleep",
  description: "Thrust: 1,000,000 N
  Specific Impulse (isp): 1,100,000 seconds
  Exhaust Velocity (ve): 11,000,000 m/second (~3.7% of light speed)
  Mass Flow Rate (ṁ ): 0.09 kg/second
  Thrust Power: 5.5 Terawatt
  Engine's Thrust to Weight Ratio: ~140 [Citation needed]
  Propellant mass fraction (yacht's mass fueled / mass empty): ~4

  Praesent aliquam, enim at fermentum mollis, ligula massa adipiscing nisl, ac euismod nibh nisl eu lectus. Fusce vulputate sem at sapien. Vivamus leo."
)

img_file = "app/assets/images/borg_tech.png"
file = File.open(img_file)
tech2.photo.attach(io: file, filename: "#{tech2.name}.png", content_type: 'image/png')

tech2.save!

# T3
tech3 = Techno.new(
  name: "No name idea yet",
  description: "Thrust: 1,000,000 N
  Specific Impulse (isp): 1,100,000 seconds
  Exhaust Velocity (ve): 11,000,000 m/second (~3.7% of light speed)
  Mass Flow Rate (ṁ ): 0.09 kg/second
  Thrust Power: 5.5 Terawatt
  Engine's Thrust to Weight Ratio: ~140
  Propellant mass fraction (yacht's mass fueled / mass empty): ~4"
)

img_file = "app/assets/images/borg_tech.png"
file = File.open(img_file)
tech3.photo.attach(io: file, filename: "#{tech3.name}.png", content_type: 'image/png')

tech3.save!


##### FLIGHTS #####

# F1
flight1 = Flight.new(
  departure_date: DateTime.now + 350.years,
  price_per_person: 50_000,
  travel_distance: 150_000_000,
  flight_duration: 355 * 365 * 24 * 60, # 355 ans x 365 j x 24 h x 60 mn = durée en mn
  departure_planet: planetCPU2,
  arrival_planet: planet2,
  techno: tech3
)

img_file = "app/assets/images/ship2.jpg"
file = File.open(img_file)
flight1.photo.attach(io: file, filename: "#{flight1.departure_planet} - 1.jpg", content_type: 'image/jpg')

flight1.save!

# F2
flight2 = Flight.new(
  departure_date: DateTime.now + 350.years,
  price_per_person: 50_000,
  travel_distance: 150_000_000,
  flight_duration: 5 * 365 * 24 * 60, # idem, mais 5 ans
  departure_planet: planetCPU1,
  arrival_planet: planet3,
  techno: tech1
)

img_file = "app/assets/images/ship3.jpg"
file = File.open(img_file)
flight2.photo.attach(io: file, filename: "#{flight1.departure_planet} - 2.jpg", content_type: 'image/jpg')

flight2.save!

# F3
flight3 = Flight.new(
  departure_date: DateTime.now + 350.years,
  price_per_person: 50_000,
  travel_distance: 150_000_000,
  flight_duration: 20,
  departure_planet: planet3,
  arrival_planet: planetCPU2,
  techno: tech2
)

img_file = "app/assets/images/ship1.png"
file = File.open(img_file)
flight3.photo.attach(io: file, filename: "#{flight1.departure_planet} - 3.png", content_type: 'image/png')

flight3.save!
