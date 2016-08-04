class Review < ActiveRecord::Base
  belongs_to :movie
  belongs_to :reviewer, class_name: 'User'
  has_many :comments

  validates :title, presence: true
  validates :body, presence: true
  validates :stars, presence: true
  validates :points, presence: true, default: 0
  validates :reviewer_id, presence: true
  validates :movie_id, presence: true
end
