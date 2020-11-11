/**
 * 
 */
/*
$(function(){
	$("div.action_links.list_action_right > ul > li.add_to_cart > a").click(function(e) {
		var product_no = $(e.target).attr("product_no");
		
		console.log(product_no);
		
		e.preventDefault();
	});
})
*/
$(function() {
	/*
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
	*/
	$("div.action_links > ul > li.add_to_cart > a").click(function(e) {
		var product_no = $(e.target).attr("p_no");
		var param = 'product_no=' + product_no;
		console.log(param);
		$.ajax({
			url:"a_add_to_cart",
			method:"POST",
			data:param,
			dataType: "json"
		})
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
	
	$('#main').click(function(e) {
		console.log("main");
		var param = 'c_no=' + 1;
		$.ajax({
			url: "f_product_list",
			method: "GET",
			data: param,
			dataType: "html",
			success: function(html) {
				$('#product_List').html(html);
			}
		})
		e.preventDefault();
	});

	$('#side').click(function(e) {
		console.log("side");
		var param = 'c_no=' + 2;
		$.ajax({
			url: "f_product_list",
			method: "GET",
			data: param,
			dataType: "html",
			success: function(html) {
				$('#product_List').html(html);
			}
		})
		e.preventDefault();
	});

	$('#drink').click(function(e) {
		console.log("drink");
		var param = 'c_no=' + 3;
		$.ajax({
			url: "f_product_list",
			method: "GET",
			data: param,
			dataType: "html",
			success: function(html) {
				$('#product_List').html(html);
			}
		})
		e.preventDefault();
	});
	
	$('[data-toggle="tooltip"]').tooltip();			
})

/*
 <c:forEach items=\"${"+product+"}\" var=\"product\">
</c:forEach>
"+product.product_image+"
*/

