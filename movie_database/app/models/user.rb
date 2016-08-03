class User < ActiveRecord::Base
  has_many :reviews
  has_many :review_votes
  has_many :comments
end
