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

img_file = "app/assets/images/borg_planet.png"
file = File.open(img_file)
planet1.photo.attach(io: file, filename: "#{planet1.name}.jpg", content_type: 'image/jpg')

planet1.save!

#P2
planet2 = Planet.new(
  name: "Kepler-22b",
  description: "Praesent aliquam, enim at fermentum mollis, ligula massa adipiscing nisl, ac euismod nibh nisl eu lectus. Fusce vulputate sem at sapien. Vivamus leo."
)

img_file = "app/assets/images/borg_planet.png"
file = File.open(img_file)
planet2.photo.attach(io: file, filename: "#{planet2.name}.jpg", content_type: 'image/jpg')

planet2.save!

#P3
planet3 = Planet.new(
  name: "Gliese 667 Cc",
  description: "Praesent aliquam, enim at fermentum mollis, ligula massa adipiscing nisl, ac euismod nibh nisl eu lectus. Fusce vulputate sem at sapien. Vivamus leo."
)

img_file = "app/assets/images/borg_planet.png"
file = File.open(img_file)
planet3.photo.attach(io: file, filename: "#{planet3.name}.jpg", content_type: 'image/jpg')

planet3.save!

#P1 - CPU
planetCPU1 = Planet.new(
  name: "Terra",
  description: "Praesent aliquam, enim at fermentum mollis, ligula massa adipiscing nisl, ac euismod nibh nisl eu lectus. Fusce vulputate sem at sapien. Vivamus leo."
)

img_file = "app/assets/images/CPU_Terra.jpg"
file = File.open(img_file)
planetCPU1.photo.attach(io: file, filename: "#{planetCPU1.name}.jpg", content_type: 'image/jpg')

planetCPU1.save!

#P2 - CPU
planetCPU2 = Planet.new(
  name: "Luna",
  description: "Praesent aliquam, enim at fermentum mollis, ligula massa adipiscing nisl, ac euismod nibh nisl eu lectus. Fusce vulputate sem at sapien. Vivamus leo."
)

img_file = "app/assets/images/CPU_Luna.png"
file = File.open(img_file)
planetCPU2.photo.attach(io: file, filename: "#{planetCPU2.name}.jpg", content_type: 'image/jpg')

planetCPU2.save!

#P3 - CPU
planetCPU3 = Planet.new(
  name: "Mars",
  description: "Praesent aliquam, enim at fermentum mollis, ligula massa adipiscing nisl, ac euismod nibh nisl eu lectus. Fusce vulputate sem at sapien. Vivamus leo."
)

img_file = "app/assets/images/CPU_Mars.jpg"
file = File.open(img_file)
planetCPU3.photo.attach(io: file, filename: "#{planetCPU3.name}.jpg", content_type: 'image/jpg')

planetCPU3.save!


##### TECHS #####

# T1
tech1 = Techno.new(
  name: "Locutus",
  description: "Praesent aliquam, enim at fermentum mollis, ligula massa adipiscing nisl, ac euismod nibh nisl eu lectus. Fusce vulputate sem at sapien. Vivamus leo."
)

img_file = "app/assets/images/borg_tech.png"
file = File.open(img_file)
tech1.photo.attach(io: file, filename: "#{tech1.name}.jpg", content_type: 'image/jpg')

tech1.save!

# T2
tech2 = Techno.new(
  name: "No name idea yet",
  description: "Praesent aliquam, enim at fermentum mollis, ligula massa adipiscing nisl, ac euismod nibh nisl eu lectus. Fusce vulputate sem at sapien. Vivamus leo."
)

img_file = "app/assets/images/borg_tech.png"
file = File.open(img_file)
tech2.photo.attach(io: file, filename: "#{tech2.name}.jpg", content_type: 'image/jpg')

tech2.save!

# T3
tech3 = Techno.new(
  name: "No name idea yet",
  description: "Praesent aliquam, enim at fermentum mollis, ligula massa adipiscing nisl, ac euismod nibh nisl eu lectus. Fusce vulputate sem at sapien. Vivamus leo."
)

img_file = "app/assets/images/borg_tech.png"
file = File.open(img_file)
tech3.photo.attach(io: file, filename: "#{tech3.name}.jpg", content_type: 'image/jpg')

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

img_file = "app/assets/images/borg_cube.jpg"
file = File.open(img_file)
flight1.photo.attach(io: file, filename: "#{flight1.name}.jpg", content_type: 'image/jpg')

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

img_file = "app/assets/images/borg_cube.jpg"
file = File.open(img_file)
flight2.photo.attach(io: file, filename: "#{flight2.name}.jpg", content_type: 'image/jpg')

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

img_file = "app/assets/images/borg_cube.jpg"
file = File.open(img_file)
flight3.photo.attach(io: file, filename: "#{flight3.name}.jpg", content_type: 'image/jpg')

flight3.save!
