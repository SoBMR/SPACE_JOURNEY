class Planet < ApplicationRecord
  has_many :departure_planets, class_name: "Flight", foreign_key: "departure_planet_id"
  has_many :arrival_planets, class_name: "Flight", foreign_key: "arrival_planet_id"
  
end
