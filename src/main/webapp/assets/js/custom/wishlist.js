
$(function() {

	$("button[name=wishlist_button]").click(function(e) {
		var wishlist_no = "wishlist_no=" + $(this).val();
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
		var product_no = $(this).val();
		console.log(product_no);
		var pty = '1';
		var allData = { "product_no": product_no, "pty": pty };
		console.log(allData);
		$.ajax({
			url: "wishlist_to_cart",
			method: "POST",
			data: allData
		})
		alert("장바구니에 메뉴를 추가했습니다.");
		e.preventDefault();
		
	});


})



