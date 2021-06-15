class CreateYogaReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :yoga_reviews do |t|
      t.string :title
      t.integer :point
      t.text :text
      
      t.timestamps
    end
  end
end
