class AddFlightDurationToFlights < ActiveRecord::Migration[6.1]
  def change
    add_column :flights, :flight_duration, :integer
  end
end
