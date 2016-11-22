# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@monterail.com', password: '123456', password_confirmation: '123456')
restaurants = Restaurant.create([{ name: 'Michelin Star Restaurant', address: 'Street A, Poland' }, { name: 'Sushi Corner', address: 'Pawła Włodkowica 12, 50-072 Wrocław, Poland' } , { name: 'Moaburger', address: 'plac Solny 10, 50-074 Wrocław, Poland' } , { name: 'Mama Manousch - Food & Wine', address: '6, Świdnicka 4A, 50-067 Wrocław, Poland' }])
meals = Meal.create([{ name: 'Healthy Salad', price: 10.50, restaurant_id: 2 }, { name: 'Pizza', price: 12.50, restaurant_id: 3 }, 
	{ name: 'Duck Chop', price: 10.50, restaurant_id: 3 }, { name: 'Mushroom Soup', price: 13.50, restaurant_id: 2 },
	{ name: 'Fish Fillet', price: 9.50, restaurant_id: 4 }, { name: 'Chicken Teriyaki', price: 16.50, restaurant_id: 3 }, 
	{ name: 'Mashed Potato', price: 17.50, restaurant_id: 2 }, { name: 'Pork Chop', price: 11.50, restaurant_id: 4 },
	{ name: 'Grilled Fish', price: 32.50, restaurant_id: 2 }, { name: 'Dim Tsum', price: 22.50, restaurant_id: 3 },
	{ name: 'Fried Rice', price: 14.50, restaurant_id: 3 }, { name: 'Sushi', price: 5.50, restaurant_id: 4 },
	{ name: 'Grilled Pork', price: 18.50, restaurant_id: 4 }, { name: 'Roast pork', price: 12.50, restaurant_id: 2 },
	{ name: 'Lamb Shank', price: 11.50, restaurant_id: 4 }])