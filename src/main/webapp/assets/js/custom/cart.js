
$(function() {

	 $("button[name=cart_delete]").click(function(e) {
        var o_d_no="o_d_no="+$(this).val();
		console.log(o_d_no);
		$.ajax({
			url: "cart_delete",
			method: "GET",
			data: o_d_no,
			dataType: "html",
			success: function(html) {
				$('#cart_delete').html(html);
			}
		})
		e.preventDefault();
	});
	
	 
	
	
})



