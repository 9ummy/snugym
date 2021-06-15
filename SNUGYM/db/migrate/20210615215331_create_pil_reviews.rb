class CreatePilReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :pil_reviews do |t|

      t.timestamps
    end
  end
end
