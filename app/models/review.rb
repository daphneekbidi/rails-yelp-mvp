class Review < ApplicationRecord
  belong_to :restaurant
  validates :content, :rating, presence: true
  validates :rating, inclusion: { in: [1, 2, 3, 4, 5] }
end
