class Restaurant < ApplicationRecord
  has_many :reviews
  validates :name, :address, presence: true, uniqueness: true
  validates :category, inclusion: { in: %w[chinese italian japanese french belgian] }
end
