class Planet < ApplicationRecord
  has_many :flights_from, class_name: "Flight", foreign_key: "departure_planet_id"
  has_many :flights_to, class_name: "Flight", foreign_key: "arrival_planet_id"

  has_one_attached :photo
end
