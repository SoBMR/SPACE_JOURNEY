Booking.destroy_all
Flight.destroy_all
Techno.destroy_all
Planet.destroy_all
User.destroy_all

User.create!(email: "test@test.com", password: "azerty")


##### PLANETS #####

#P1
planet1 = Planet.new(
  name: "Proxima Centauri B",
  description: "Praesent aliquam, enim at fermentum mollis, ligula massa adipiscing nisl, ac euismod nibh nisl eu lectus. Fusce vulputate sem at sapien. Vivamus leo."
)

# img_url = "borg_planet.png"
# file = URI.open(img_url)
# planet.photo.attach(io: file, filename: "#{planet.name}.jpg", content_type: 'image/jpg')

planet1.save!

#P2
planet2 = Planet.new(
  name: "Kepler-22b",
  description: "Praesent aliquam, enim at fermentum mollis, ligula massa adipiscing nisl, ac euismod nibh nisl eu lectus. Fusce vulputate sem at sapien. Vivamus leo."
)

# img_url = "borg_planet.png"
# file = URI.open(img_url)
# planet.photo.attach(io: file, filename: "#{planet.name}.jpg", content_type: 'image/jpg')

planet2.save!

#P3
planet3 = Planet.new(
  name: "Gliese 667 Cc",
  description: "Praesent aliquam, enim at fermentum mollis, ligula massa adipiscing nisl, ac euismod nibh nisl eu lectus. Fusce vulputate sem at sapien. Vivamus leo."
)

# img_url = "borg_planet.png"
# file = URI.open(img_url)
# planet.photo.attach(io: file, filename: "#{planet.name}.jpg", content_type: 'image/jpg')

planet3.save!

#P1 - CPU
planetCPU1 = Planet.new(
  name: "Terra",
  description: "Praesent aliquam, enim at fermentum mollis, ligula massa adipiscing nisl, ac euismod nibh nisl eu lectus. Fusce vulputate sem at sapien. Vivamus leo."
)

# img_url = "borg_planet.png"
# file = URI.open(img_url)
# planet.photo.attach(io: file, filename: "#{planet.name}.jpg", content_type: 'image/jpg')

planetCPU1.save!

#P2
planetCPU2 = Planet.new(
  name: "Luna",
  description: "Praesent aliquam, enim at fermentum mollis, ligula massa adipiscing nisl, ac euismod nibh nisl eu lectus. Fusce vulputate sem at sapien. Vivamus leo."
)

# img_url = "borg_planet.png"
# file = URI.open(img_url)
# planet.photo.attach(io: file, filename: "#{planet.name}.jpg", content_type: 'image/jpg')

planetCPU2.save!

#P3
planetCPU3 = Planet.new(
  name: "Mars",
  description: "Praesent aliquam, enim at fermentum mollis, ligula massa adipiscing nisl, ac euismod nibh nisl eu lectus. Fusce vulputate sem at sapien. Vivamus leo."
)

# img_url = "borg_planet.png"
# file = URI.open(img_url)
# planet.photo.attach(io: file, filename: "#{planet.name}.jpg", content_type: 'image/jpg')

planetCPU3.save!


##### TECHS #####

# T1
tech = Techno.new(
  name: "Locutus",
  description: "Praesent aliquam, enim at fermentum mollis, ligula massa adipiscing nisl, ac euismod nibh nisl eu lectus. Fusce vulputate sem at sapien. Vivamus leo."
)

# img_url = "borg_cube.jpg"
# file = URI.open(img_url)
# tech.photo.attach(io: file, filename: "#{tech.name}.jpg", content_type: 'image/jpg')

tech.save!

# T2
tech2 = Techno.new(
  name: "No name idea yet",
  description: "Praesent aliquam, enim at fermentum mollis, ligula massa adipiscing nisl, ac euismod nibh nisl eu lectus. Fusce vulputate sem at sapien. Vivamus leo."
)

# img_url = "borg_cube.jpg"
# file = URI.open(img_url)
# tech.photo.attach(io: file, filename: "#{tech.name}.jpg", content_type: 'image/jpg')

tech2.save!

# T3
tech3 = Techno.new(
  name: "No name idea yet",
  description: "Praesent aliquam, enim at fermentum mollis, ligula massa adipiscing nisl, ac euismod nibh nisl eu lectus. Fusce vulputate sem at sapien. Vivamus leo."
)

# img_url = "borg_cube.jpg"
# file = URI.open(img_url)
# tech.photo.attach(io: file, filename: "#{tech.name}.jpg", content_type: 'image/jpg')

tech3.save!


##### FLIGHTS #####

# F1
flight1 = Flight.new(
  departure_date: DateTime.now + 3.days,
  price_per_person: 50_000,
  travel_distance: 150_000_000,
  departure_planet: planetCPU2,
  arrival_planet: planet2,
  techno: tech3
)

# img_url = # img address
# file = URI.open(img_url)
# flight.photo.attach(io: file, filename: "#{flight.name}.jpg", content_type: 'image/jpg')

flight1.save!

# F2
flight2 = Flight.new(
  departure_date: DateTime.now + 3.days,
  price_per_person: 50_000,
  travel_distance: 150_000_000,
  departure_planet: planetCPU1,
  arrival_planet: planet3,
  techno: tech1
)

# img_url = # img address
# file = URI.open(img_url)
# flight.photo.attach(io: file, filename: "#{flight.name}.jpg", content_type: 'image/jpg')

flight2.save!

# F3
flight3 = Flight.new(
  departure_date: DateTime.now + 3.days,
  price_per_person: 50_000,
  travel_distance: 150_000_000,
  departure_planet: planet3,
  arrival_planet: planetCPU2,
  techno: tech2
)

# img_url = # img address
# file = URI.open(img_url)
# flight.photo.attach(io: file, filename: "#{flight.name}.jpg", content_type: 'image/jpg')

flight3.save!
