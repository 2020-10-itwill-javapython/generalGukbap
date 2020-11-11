/**
 * 
 */

/*
$(function() {
	
	
	$(".product_thumb .quick_button > a").on('click', function(e) {
		console.log(e);
		var product_no =$(e.target).attr('product_no')
		var param = 'product_no=' + product_no;
		
		$.ajax({
			url: "modal_prodcut_detail",
			method: "GET",
			data: param,
			dataType: "json",
			success: function(product) {
				$('#modal_detail_title').text(product.product_name);
				$('#modal_detail_desc').text(product.product_desc);
				console.log(product.product_no)
				
			}
		})
		e.preventDefault();
	})
	
	$('div.action_links > ul > li.quick_button > a').on('click', function(e){
		console.log(e.target);
	})
	
	$("#modal_box").on('show.bs.modal', function(e) {

		console.log(e);
		console.log(e.target);
		console.log(e.relatedTarget);

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


 <c:forEach items=\"${"+product+"}\" var=\"product\">
</c:forEach>
"+product.product_image+"
*/


$(function() {
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

				//console.log(product.product_no)

			}
		})
		
	})
})
	