class Category < ActiveRecord::Base
  has_many :movies

  # Unique category in database
  validates :name, presence: true, uniqueness: true
end
