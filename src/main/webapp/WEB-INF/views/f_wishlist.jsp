<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<table>
	<thead>
		<tr>
			<th class="product_remove">삭제</th>
			<th class="product_thumb">이미지</th>
			<th class="product_name">메뉴</th>
			<th class="product-price">가격</th>
			<th class="product_total">장바구니 담기</th>
		</tr>
	</thead>

	<c:forEach items="${wishlist}" var="wishlist">
		<tbody>
			<tr>
				<td class="product_remove"><button
						style="border: none; background: transparent;"
						name="wishlist_button" value="${wishlist.wishlist_no}">
						<a>X</a>
					</button></td>
				<td class="product_thumb"><a href="#"><img
						src="assets/img/product/${wishlist.product.product_image}" alt=""></a></td>
				<td class="product_name"><a href="#">${wishlist.product.product_name}</a></td>
				<td class="product-price">${wishlist.product.product_price}</td>
				<td class="product_total"><a href="#">장바구니 담기</a></td>
			</tr>
		</tbody>
	</c:forEach>
</table>

<script type="text/javascript" src="assets/js/custom/f_wishlist.js"></script>