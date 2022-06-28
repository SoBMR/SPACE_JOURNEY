class Flight < ApplicationRecord
  belongs_to :techno
  belongs_to :departure_planet, class_name: "Planet"
  belongs_to :arrival_planet, class_name: "Planet"

  has_many :bookings
  has_many :new_flight

  has_one_attached :photo
end
