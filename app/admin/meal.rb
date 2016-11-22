ActiveAdmin.register Meal do
	permit_params :name, :price, :restaurant_id
end
