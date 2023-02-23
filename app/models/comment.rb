class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :poster, presence: true, length: { in: 2..20 }
  validates :body, presence: true, length: { in: 2..1000 }
end
