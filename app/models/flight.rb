class Flight < ApplicationRecord
  belongs_to :techno
  belongs_to :departure_planet, class_name: "Planet"
  belongs_to :arrival_planet, class_name: "Planet"

end
