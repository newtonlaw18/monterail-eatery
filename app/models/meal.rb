class Meal < ApplicationRecord
  belongs_to :restaurant
  has_many :orders

  validates :name, :price, presence: true
  validates :price, numericality: { only_float: true }
end
