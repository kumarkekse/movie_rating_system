class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.references :user, foreign_key: true
      t.references :movie, foreign_key: true
      t.integer :rating
      t.text :comment
      t.integer :parent_id
      t.timestamps
    end
  end
end
