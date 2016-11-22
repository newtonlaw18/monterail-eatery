$('document').ready(function(){
	$('#receiveOrder').click(function(event){
		var order_id = $(this).parent().find('#order_id').text();
		var status = "Delivered";
		var url = '/orders/'+order_id;
		var data = JSON.stringify({
			'status' : status
		});

		var updateOrderStatusRequest = $.ajax({
			type: 'PATCH',
			url: url,
			beforeSend: function(x){
				x.setRequestHeader('Content-Type', 'application/json');
			},
			data: data,
			success: function(data){
				location.reload();
			}
		})
	});
});