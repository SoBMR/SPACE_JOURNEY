class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :flight, class_name: "Flights"

end
