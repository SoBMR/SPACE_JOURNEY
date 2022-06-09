class CreateFlights < ActiveRecord::Migration[6.1]
  def change
    create_table :flights do |t|
      # t.references :user, null: false, foreign_key: true
      t.integer :travel_distance
      t.integer :price_per_person
      t.datetime :departure_date
      t.references :departure_planet, foreign_key: { to_table: "planets" }
      t.references :arrival_planet, foreign_key: { to_table: "planets" }
      t.references :techno, null: false, foreign_key: true

      t.timestamps
    end

    # add_column :flights, :departure_planet_id, :integer
    # add_column :flights, :arrival_planet_id, :integer

  end
end
