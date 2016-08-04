class Movie < ActiveRecord::Base
  belongs_to :category
  has_many :reviews

  validates :title, :poster_path, :summary, :release_date, :category_id, presence: true

end
