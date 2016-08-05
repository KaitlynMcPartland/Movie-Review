class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.text :summary
      t.string :poster_path
      t.integer :category_id
      t.date :release_date

      t.timestamps null: false
    end
  end
end
