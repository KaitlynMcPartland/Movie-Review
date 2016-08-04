class Category < ActiveRecord::Base
  has_many :movies

  validates :name, :movie_db_id, presence: true
end
