class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :concert_name
      t.string :duration
      t.integer :artist_id
      t.integer :location_id

      t.timestamps null: false
    end
  end
end
