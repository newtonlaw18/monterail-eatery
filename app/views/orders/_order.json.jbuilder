json.extract! order, :id, :restaurant_id, :meal_id, :name, :price, :status, :user_id, :created_at, :updated_at
json.url order_url(order, format: :json)