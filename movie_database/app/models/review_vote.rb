class ReviewVote < ActiveRecord::Base
  belongs_to :review
  belongs_to :voter, class_name: 'User'

  validates_uniqueness_of :voter_id, scope: :review_id
  validates :review_id, presence: true
  validates :voter_id, presence: true
end
