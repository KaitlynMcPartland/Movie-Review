class Review < ActiveRecord::Base
  belongs_to :movie
  belongs_to :reviewer, class_name: 'User'
  has_many :comments

  validates :title, presence: true
  validates :body, presence: true
  validates :stars, presence: true
  validates :points, presence: true
  validates :reviewer_id, presence: true
  validates :movie_id, presence: true

  before_save :set_points

  scope :recent, -> { order('created_at DESC') }

  protected

  def set_points
    self.points ||= 0
  end
end
