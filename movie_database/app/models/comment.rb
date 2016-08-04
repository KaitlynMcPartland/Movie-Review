class Comment < ActiveRecord::Base
  belongs_to :review
  belongs_to :commenter, class_name: 'User'

  validates :body, presence: true
  validates :review_id, presence: true
  validates :commenter_id, presence: true
end
