class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :first_name
      t.string :last_name
      t.date :date_of_birth
      t.string :picture
      t.text :biography
      t.string :location

      t.timestamps null: false
    end
  end
end
