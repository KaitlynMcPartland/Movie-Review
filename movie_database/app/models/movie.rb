class Movie < ActiveRecord::Base
  belongs_to :category
  has_many :reviews

  validates :title, :poster_path, :summary, :release_date, :category_id, presence: true

  validates :title, uniqueness: true

  def self.search(search)
    search_param = search.downcase
    where("lower(title) LIKE ?", "%#{search_param}%")
  end

  scope :recent, -> { order('created_at DESC') }

end
