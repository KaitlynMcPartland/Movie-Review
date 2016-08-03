class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :title
      t.text :body
      t.integer :stars
      t.integer :points
      t.integer :user_id
      t.integer :movie_id

      t.timestamps null: false
    end
  end
end
