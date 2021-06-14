class AddNameToGym < ActiveRecord::Migration[5.0]
  def change
    add_column :gyms, :name, :string
  end
end
