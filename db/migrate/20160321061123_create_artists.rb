class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.text :description
      t.string :picture
      t.integer :followers, default: 0
      t.integer :amount_raised, default: 0
      t.string :country_of_origin
      t.integer :tier_1
      t.integer :tier_2
      t.integer :tier_3

      t.timestamps null: false
    end
  end
end
