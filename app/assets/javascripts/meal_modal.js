$('document').ready(function(){
	var meal_id, meal_name, meal_price, restaurant_name, restaurant_id, user_id;
	$('.gallery-item').click(function(event){

		user_id = $(this).find('#user_id').text();
		restaurant_id = $(this).find('#restaurant_id').text();
		meal_id = $(this).find('#meal_id').text();
		meal_name = $(this).find('#meal_name').text();
		meal_price = $(this).find('#meal_price').text();
		restaurant_name = $(this).find('#restaurant_name').text();
		
		$('#mealName').text(meal_name);
		$('#mealPrice').text("$ "+meal_price);
		$('#restaurantName').text(restaurant_name);

	});

	//send AJAX call to post to db
	$('#order_meal').click(function(event){
		event.preventDefault();

		meal_id = parseInt(meal_id);
		restaurant_id = parseInt(restaurant_id);
		user_id = parseInt(user_id);
		meal_price = parseFloat(meal_price);

		var url = '/orders/';
		var data = JSON.stringify({	
				'restaurant_id' : restaurant_id,
				'meal_id' : meal_id,
				'name' : meal_name,
				'price' : meal_price,
				'status' : 'Ordered',
				'user_id' : user_id
				
			});

		var addOrderRequest = $.ajax({
				type: 'POST',
				url: url,
				beforeSend: function(x){
					x.setRequestHeader('Content-Type', 'application/json');
				},
				data: data,
				success: function( data ){
					$('#itemDetails').hide();
					$('#orderConfirmed').modal('show');
				}
			})
	});

	$('#dismissConfirmation').click(function(event){
		location.reload();
	});
	
});
