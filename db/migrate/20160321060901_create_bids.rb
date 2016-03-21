class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.integer :tier_chosen
      t.integer :amount
      t.integer :user_id
      t.integer :artist_id

      t.timestamps null: false
    end
  end
end
