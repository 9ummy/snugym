class CreatePilates < ActiveRecord::Migration[5.0]
  def change
    create_table :pilates do |t|
      t.string :location
      t.numeric :capacity
      t.string :description
      t.numeric :locker_room
      t.numeric :price_1m
      t.numeric :price_3m
      t.numeric :price_12m

      t.timestamps
    end
  end
end
