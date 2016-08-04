class Comment < ActiveRecord::Base
  belongs_to :review
  belongs_to :commenter, class_name: 'User'
end
