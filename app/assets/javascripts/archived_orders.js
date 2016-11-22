$('document').ready(function(){
	$('#archived_btn').click(function(event){
		$('.gallery').hide();
	});
	$('#todays_btn').click(function(event){
		$('.gallery').show();
	});
});