class CreateParkingLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :parking_locations do |t|
      t.string :name
      t.decimal :latitude
      t.decimal :longitude
      t.string :image_url

      t.timestamps
    end
  end
end
