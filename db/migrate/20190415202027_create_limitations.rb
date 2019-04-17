class CreateLimitations < ActiveRecord::Migration[5.2]
  def change
    create_table :limitations do |t|
      t.integer :time_limit
      t.float :cost
      t.string :sweep_day
      t.boolean :handicap_accessible

      t.timestamps
    end
  end
end
