class CreateParkingEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :parking_events do |t|
      t.string :day
      t.time :time
      t.references :user, foreign_key: true
      t.references :destination, foreign_key: true
      t.references :parking_location, foreign_key: true
      t.integer :ease_rating
      t.integer :safety_rating
      t.float :time_spent
      t.integer :walkability_rating
      t.text :notes

      t.timestamps
    end
  end
end
