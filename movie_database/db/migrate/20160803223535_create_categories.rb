class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name,  presence: true
      t.integer :movie_db_id, presence: true

      t.timestamps null: false
    end
  end
end
