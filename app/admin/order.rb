ActiveAdmin.register Order do
	permit_params :restaurant_id, :meal_id, :name, :price, :status, :user_id
end
