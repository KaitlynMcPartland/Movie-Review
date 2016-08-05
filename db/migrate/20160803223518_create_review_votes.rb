class CreateReviewVotes < ActiveRecord::Migration
  def change
    create_table :review_votes do |t|
      t.boolean :vote
      t.integer :review_id
      t.integer :voter_id

      t.timestamps null: false
    end
  end
end
