class CreatePilPosts < ActiveRecord::Migration[5.0]
  def change
    create_table :pil_posts do |t|

      t.timestamps
    end
  end
end
