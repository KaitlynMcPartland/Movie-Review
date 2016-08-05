class Category < ActiveRecord::Base
  has_many :movies
  has_many :reviews, through: :movies

  validates :name, :movie_db_id, presence: true
  validates :name, uniqueness: true
end
