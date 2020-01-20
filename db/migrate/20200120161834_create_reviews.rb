class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :content, null: false
      t.integer :rating, null: false
      t.integer :reviewer_id
      t.integer :reviewee_id

      t.timestamps
    end
  end
end
