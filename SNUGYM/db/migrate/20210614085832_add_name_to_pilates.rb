class AddNameToPilates < ActiveRecord::Migration[5.0]
  def change
    add_column :pilates, :name, :string
  end
end
