class Restaurant < ApplicationRecord
	has_many :meals, dependent: :destroy
	has_many :orders

	validates :name, :address, presence: true
end
