class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :reviews, foreign_key: 'reviewer_id'
  has_many :review_votes, foreign_key: 'voter_id'
  has_many :comments, foreign_key: 'commenter_id'

  validates :username, presence: true
  validates :email, presence: true
  validates :password_digest, presence: true
  validates :rating, presence: true, default: 0
  validates :status, presence: true, default: "Novice"
end
