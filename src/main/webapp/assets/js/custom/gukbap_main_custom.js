
$(function() {
	
	 $("button[name=main_to_cart_button]").click(function(e) {
        var product_no = $(this).val();
		var param = 'product_no=' + product_no;
		console.log(param); 
		var pty='1';
		var allData = { "product_no": product_no, "pty": pty };
		 console.log(pty); 
			$.ajax({
			url:"main_to_cart", 
			method:"POST",
			data:allData
		})
		alert("장바구니에 메뉴를 추가했습니다.");
		e.preventDefault();
		
	});
	
	 $("button[name=main_to_wishlist_button]").click(function(e) {
        var product_no = $(this).val();
		var param = 'product_no=' + product_no;
		console.log(param);
		
		$.ajax({
			url:"main_to_wishlist",
			method:"POST",			
			data:param,		
		})
		alert("위시리스트에 메뉴를 추가했습니다.");
		e.preventDefault();
		
	});
	
	$("#modal_box").on('show.bs.modal', function(e) {
		var product_no = $(e.relatedTarget).attr("product_no");
		var param = 'product_no=' + product_no;
		console.log(param);
        
		$.ajax({
			url: "modal_prodcut_detail",
			method: "GET",
			data: param,
			dataType: "json",
			success: function(product) {
				$('#modal_detail_title').text(product.product_name);
				$('#modal_detail_desc').text(product.product_desc);
				$('#modal_detail_price').text(product.product_price);
				$('#modal_detail_image ').html("<img src=\"assets/img/product/" + product.product_image + "\" alt=\"\">");

			}
		})
		
	})
})
	