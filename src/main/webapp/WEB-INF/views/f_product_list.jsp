<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	
<c:forEach items="${productList}" var="product">
	<div class="col-lg-4 col-md-4 col-sm-6 col-12 ">
		<div class="single_product">
			<div class="product_thumb">

				<a class="primary_img" href="product-details?product_no=${product.product_no}"><img
					src="assets/img/product/${product.product_image}" alt=""></a> <a
					class="secondary_img" href="product-details?product_no=${product.product_no}"><img
					src="assets/img/product/${product.product_image}" alt=""></a>
			</div>
			<div class="action_links">

				<ul>
					<li class="add_to_cart"><a href="cart.jsp" title="Add to cart"><span
							class="lnr lnr-cart"></span></a></li>
					<li class="quick_button"><a href="#"
						product_no="${product.product_no}" data-toggle="modal"
						data-target="#modal_box" title="quick view"> <span
							class="lnr lnr-magnifier"></span></a></li>
					<li class="wishlist"><a href="wishlist.jsp"
						title="Add to Wishlist"><span class="lnr lnr-heart"></span></a></li>
					<li class="compare"><a href="#" title="Add to Compare"><span
							class="lnr lnr-sync"></span></a></li>
				</ul>

			</div>
		</div>
		<div class="product_content grid_content">
			<h4 class="product_name">
				<a href="product-details?product_no=${product.product_no}" id="product_name">${product.product_name}</a>
			</h4>
			<div class="price_box">
				<span class="current_price">${product.product_price}원</span>

			</div>
		</div>
		<div class="product_content list_content">
			<h4 class="product_name">
				<a href="product-details?product_no=${product.product_no}">${product.product_name}</a>
			</h4>
		
			<div class="price_box">
				<span class="current_price">${product.product_price}원</span>

			</div>
			<div class="product_desc">
				<p>${product.product_desc}</p>
			</div>
			<div class="action_links list_action_right">
				<input id="modal_product_no" type="hidden"
					value="${product.product_no }" />
				<ul>
					<li class="add_to_cart"><a href="cart.jsp" title="Add to cart">Add
							to Cart</a></li>
					<li class="quick_button"><a href="#"
						product_no="${product.product_no}" data-toggle="modal"
						data-target="#modal_box" title="quick view"> <span
							class="lnr lnr-magnifier"></span></a></li>
					<li class="wishlist"><a href="wishlist.jsp"
						title="Add to Wishlist"><span class="lnr lnr-heart"></span></a></li>
					<li class="compare"><a href="#" title="Add to Compare"><span
							class="lnr lnr-sync"></span></a></li>
				</ul>

			</div>
		</div>
	</div>
</c:forEach>