class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :venue_name
      t.text :description
      t.string :address
      t.string :city
      t.string :country
      t.integer :capacity

      t.timestamps null: false
    end
  end
end
