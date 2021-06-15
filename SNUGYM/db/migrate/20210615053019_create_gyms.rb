class CreateGyms < ActiveRecord::Migration[5.0]
  def change
    create_table :gyms do |t|
      t.string :name
      t.string :location
      t.integer :capacity
      t.string :description
      t.integer :treadmill
      t.integer :barbell
      t.integer :leg_press
      t.integer :locker_room
      t.integer :shower_room
      t.integer :price_1m
      t.integer :price_3m
      t.integer :price_12m

      t.timestamps
    end
  end
end
