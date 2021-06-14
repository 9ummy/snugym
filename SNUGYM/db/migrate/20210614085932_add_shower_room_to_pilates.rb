class AddShowerRoomToPilates < ActiveRecord::Migration[5.0]
  def change
    add_column :pilates, :shower_room, :numeric
  end
end
