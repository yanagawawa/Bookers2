class Book < ApplicationRecord
  belongs_to :user

  validates :title, absence: true
  validates :body, absence: true, length: { maximum: 50 }
end
