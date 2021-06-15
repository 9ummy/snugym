class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      
      t.text :number
      t.text :time
      t.text :title

      t.timestamps
    end
  end
end
 