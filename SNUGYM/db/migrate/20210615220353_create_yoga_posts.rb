class CreateYogaPosts < ActiveRecord::Migration[5.0]
  def change
    create_table :yoga_posts do |t|

      t.timestamps
    end
  end
end
