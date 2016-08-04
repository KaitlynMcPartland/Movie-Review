class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title, presence: true
      t.text :summary, presence: true
      t.string :poster_path, presence: true
      t.integer :category_id, presence: true
      t.date :release_date, presence: true

      t.timestamps null: false
    end
  end
end
