class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable
  has_many :reviews, foreign_key: 'reviewer_id'
  has_many :review_votes, foreign_key: 'voter_id'
  has_many :comments, foreign_key: 'commenter_id'

  before_save :set_default_values

  validates :username, presence: true
  # validates :email, presence: true
  # validates :password_digest, presence: true
  # validates :rating, presence: true
  # validates :status, presence: true

  def update_status
    if self.rating >= 40
      self.status = "Gold"
      self.save
    elsif self.rating >= 25
      self.status = "Silver"
      self.save
    elsif self.rating >= 10
      self.status = "Bronze"
      self.save
    else
      self.status = "Novice"
      self.save
    end
  end


  protected

  def set_default_values
    self.rating ||= 0
    self.status ||= "Novice"
  end
end
