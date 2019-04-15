class CreateLocationLimitations < ActiveRecord::Migration[5.2]
  def change
    create_table :location_limitations do |t|
      t.references :parking_location, foreign_key: true
      t.references :limitation, foreign_key: true

      t.timestamps
    end
  end
end
