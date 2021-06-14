class AddShowerRoomToYoga < ActiveRecord::Migration[5.0]
  def change
    add_column :yogas, :shower_room, :numeric
  end
end
