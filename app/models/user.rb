class User < ApplicationRecord
  has_many :posts
  has_many :comments

  validates :username, presence: true, uniqueness: true, length: { in: 2..20 }
  validates :password, presence: true, length: { in: 5..20 }
  validates :email, presence: true
end
