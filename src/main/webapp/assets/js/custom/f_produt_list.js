
$(function() {

	 $("button[name=wishlist_button]").click(function(e) {
        var product_no = $(this).val();
		var param = 'product_no=' + product_no;
		 console.log(param);
		$.ajax({
			url:"add_wishlist",
			method:"POST",			
			data:param,		
		})
		alert("찜 완료");
		e.preventDefault();
	});

     $("button[name=add_to_cart_button]").click(function(e) {
        var product_no = $(this).val();
		var param = 'product_no=' + product_no;
		var pty='pty=1';
		var allData = { "product_no": product_no, "pty": '1' };
		 console.log(param); 
		 console.log(pty); 
			$.ajax({
			url:"add_to_cart",
			method:"POST",
			data:allData
		})
		alert("카트 추가완료");
		e.preventDefault();
	});


	
	
	
	$("#modal_box").on('show.bs.modal', function(e) {

		//console.log(e.relatedTarget)

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

				//console.log(product.product_no)

			}
		})
	})


	$('#modal_box').on('hide.bs.modal', function(e) {
		$('#modal_detail_title').text("");
		$('#modal_detail_desc').text("");

	})
	
	
})



