class AddShowerRoomToGym < ActiveRecord::Migration[5.0]
  def change
    add_column :gyms, :shower_room, :numeric
  end
end
