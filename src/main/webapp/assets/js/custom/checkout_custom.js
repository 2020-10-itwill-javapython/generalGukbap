/**
 * 
 */
$(function() {
	$('#checkout_action').click(function(e) {
		var order_note = $('#order_note').val();
		var order_no = $('.order_button input').val();
		
		$.ajax({
			url: 'checkout_action',
			method: 'POST',
			dataType: 'json',
			data: {'order_note': order_note, 'order_no': order_no},
			success: function() {
				location.href = 'my-account';
			}
				
		})
	})
	
})