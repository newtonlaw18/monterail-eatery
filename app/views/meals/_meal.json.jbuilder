json.extract! meal, :id, :name, :price, :restaurant_id, :created_at, :updated_at
json.url meal_url(meal, format: :json)