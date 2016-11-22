class Order < ApplicationRecord
  belongs_to :restaurant
  belongs_to :meal
  belongs_to :user

  validates :restaurant_id, :meal_id, :name, :price, :status, :user_id, presence: true

  scope :todays_order, -> { where("created_at >= ?", Time.zone.now.beginning_of_day) }
  scope :delivered_orders, -> { where(status: 'Delivered') }
end
