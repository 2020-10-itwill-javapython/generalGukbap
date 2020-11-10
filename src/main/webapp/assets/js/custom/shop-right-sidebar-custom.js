/**
 * 
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
	$("#modal_box").on('show.bs.modal', function(e) {

		//console.log(e.relatedTarget)

		var product_no = $(e.relatedTarget).attr("product_no");
		var param = 'product_no=' + product_no;

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

/*
 <c:forEach items=\"${"+product+"}\" var=\"product\">
</c:forEach>
"+product.product_image+"
*/


$(function() {
	$('#main').click(function(e) {
		console.log("main");
		var param = 'c_no=' + 1;
		$.ajax({
			url: "prodcut_list",
			method: "GET",
			data: param,
			dataType: "json",
			success: function(jsonArray) {
				var html='';
				$.each(jsonArray, function(i, product) {
					console.log(product.product_image);
				    html+="<div class=\"col-lg-4 col-md-4 col-sm-6 col-12 \">";
					html+="<div class=\"single_product\">";
							html+="<div class=\"product_thumb\">";
							html+="<a class=\"primary_img\" href=\"product-details.jsp\"><img src=\"assets/img/product/"+product.product_image+"\" alt=\"\"></a>";
							html+="<a class=\"secondary_img\" href=\"product-details.jsp\"><img src=\"assets/img/product/"+product.product_image+"\" alt=\"\"></a>";
							html+="</div>";//product_thumb
							html+="<div class=\"action_links\">";
		                    html+="<ul>";
		                    html+="<li class=\"add_to_cart\"><a href=\"cart.jsp\" title=\"Add to cart\"><span class=\"lnr lnr-cart\"></span></a></li>";
		                    html+="<li class=\"quick_button\" ><a href=\"#\" product_no=\""+product.product_no+"\" data-toggle=\"modal\" data-target=\"#modal_box\"  title=\"quick view\"> <span class=\"lnr lnr-magnifier\"  ></span></a></li>";
		                    html+= "<li class=\"wishlist\"><a href=\"wishlist.jsp\" title=\"Add to Wishlist\"><span class=\"lnr lnr-heart\"></span></a></li>" 
		                    html+= "<li class=\"compare\"><a href=\"#\" title=\"Add to Compare\"><span class=\"lnr lnr-sync\"></span></a></li>";
		                    html+="</ul>";
		                    html+="</div>";//action_links
					html+="</div>";//single_product
					
					html+="<div class=\"product_content grid_content\">";
		                    html+="<h4 class=\"product_name\"><a href=\"product-details.jsp\" id=\"product_name\">"+product.product_name+"</a></h4>";
		                    html+="<p><a href=\"#\">Fruits</a></p>";
		                    html+="<div class=\"price_box\">"; 
		                   		 html+="<span class=\"current_price\">"+product.product_price+"원</span>";
		                    html+="</div>"//price_box
                    html+="</div>"//product_content grid_content
                   
					html+="</div>";//col-lg-4 col-md-4 col-sm-6 col-12
             
              }); 
            $('#product_List').html(html);
			}
		})
		e.preventDefault();
	});

	$('#side').click(function(e) {
		console.log("side");
		e.preventDefault();
	});

	$('#drink').click(function(e) {
		console.log("drink");
		e.preventDefault();
	});
})
