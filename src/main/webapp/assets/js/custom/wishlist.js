
$(function() {

	 $("button[name=wishlist_button]").click(function(e) {
        var wishlist_no="wishlist_no="+$(this).val();
		console.log(wishlist_no);
		$.ajax({
			url: "f_wishlist",
			method: "GET",
			data: wishlist_no,
			dataType: "html",
			success: function(html) {
				$('#product_List').html(html);
			}
		})
		
		e.preventDefault();
	});
	
	 
	
	
})



