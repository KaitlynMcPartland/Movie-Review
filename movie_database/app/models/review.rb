class Review < ActiveRecord::Base
  belongs_to :movie
  belongs_to :reviewer, class_name: "User"
  has_many :comments
end
