class AddNameToYoga < ActiveRecord::Migration[5.0]
  def change
    add_column :yogas, :name, :string
  end
end
