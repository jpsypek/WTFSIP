class CreateDestinations < ActiveRecord::Migration[5.2]
  def change
    create_table :destinations do |t|
      t.string :name
      t.decimal :latitude
      t.decimal :longitude
      t.string :destination_type
      t.string :image_url

      t.timestamps
    end
  end
end
