
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
				$('#wishlist_list').html(html);
			}
		})
		
		e.preventDefault();
	});
	
	$("button[name=wishlist_to_cart_button]").click(function(e) {
        var product_no="product_no="+$(this).val();
		console.log(product_no);
		/*
		$.ajax({
			url: "f_wishlist",
			method: "GET",
			data: product_no,
			dataType: "html",
			success: function(html) {
				$('#wishlist_list').html(html);
			}
		})
		*/
		
		e.preventDefault();
	});
	
	
	
})



