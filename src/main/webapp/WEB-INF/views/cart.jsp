<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	    
	<jsp:include page="common_header.jsp"/>

<body>


   <!--header area start-->
    <!--offcanvas menu area start-->
    
    <!--offcanvas menu area end-->
    
   
    <!--header area end-->
    
    <!--breadcrumbs area start-->
	<div class="breadcrumbs_area">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="breadcrumb_content">
						<h3>Cart</h3>
						<ul>
							<li><a href="index.html">home</a></li>
							<li>Shopping Cart</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--breadcrumbs area end-->
    
     <!--shopping cart area start -->
    <div class="shopping_cart_area mt-70">
        <div class="container">  
                <div class="row">
                    <div class="col-12">
                        <div class="table_desc">
                            <div class="cart_page" id="cart_delete">
                                <table>
                            <thead>
                                <tr>
                                    <th class="product_remove">삭제</th>
                                    <th class="product_thumb">이미지</th>
                                    <th class="product_name">제품</th>
                                    <th class="product-price">가격</th>
                                    <th class="product_quantity">수량</th>
                                    <th class="product_total">합계</th>
                                </tr>
                            </thead>
                          <c:forEach items="${orderDetailList}" var="orderDetail">  
                            <tbody>
                                <tr>
                                   <td class="product_remove"><a><button style="border: none; background: transparent;" name="cart_delete" value="${orderDetail.o_d_no}"><i class="fa fa-trash-o"></i></button></a></td>
                                    <td class="product_thumb"><a><img src="assets/img/product/${orderDetail.product.product_image}"></a></td>
                                    <td class="product_name"><a>${orderDetail.product.product_name}</a></td>
                                    <td class="product-price">${orderDetail.product.product_price}</td>
                                    <td class="product_quantity"><label>${orderDetail.o_d_product_count}</label></td>
                                    <td class="product_total">${orderDetail.product.product_price*orderDetail.o_d_product_count}</td>
                                </tr>
                            </tbody>
                            </c:forEach>
                        </table>   
                            </div>  
                            <!-- 
                            <div class="cart_submit">
                                <button type="submit">update cart</button>
                            </div> 
                              -->   
                        </div>
                     </div>
                 </div>
                 <!--coupon code area start-->
                <div class="coupon_area">
                         <div class="col-md-6 offset-md-6"></div>
                            <div class="coupon_code right">
                                <h3>Cart Totals</h3>
                                <div class="coupon_inner">
                                   <div class="cart_subtotal">
                                       <p>소계</p>
                                     <!--  -->  <p class="cart_amount">총합:${order.order_total_price}원</p>
                                   </div>
                                   <div class="cart_subtotal ">
                                       <p>배송비</p>
                                       <p class="cart_amount">3000원</p>
                                   </div>
                                   <a ></a>

                                   <div class="cart_subtotal">
                                       <p>주문금액</p>
                                       <c:if test="${order.order_total_price>0}">
                                       <p class="cart_amount">${order.order_total_price+3000}원</p>
                                       </c:if>
                                   </div>
                                   <div class="checkout_btn">
                                       <a href="checkout">주문하기</a>
                                   </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--coupon code area end-->
     <!--shopping cart area end -->
    
    <!--footer area start-->
   <jsp:include page="common_footer.jsp"/>
    <!--footer area end-->

<!-- JS
============================================ -->
<!--jquery min js-->
<script src="assets/js/vendor/jquery-3.4.1.min.js"></script>
<!--popper min js-->
<script src="assets/js/popper.js"></script>
<!--bootstrap min js-->
<script src="assets/js/bootstrap.min.js"></script>
<!--owl carousel min js-->
<script src="assets/js/owl.carousel.min.js"></script>
<!--slick min js-->
<script src="assets/js/slick.min.js"></script>
<!--magnific popup min js-->
<script src="assets/js/jquery.magnific-popup.min.js"></script>
<!--counterup min js-->
<script src="assets/js/jquery.counterup.min.js"></script>
<!--jquery countdown min js-->
<script src="assets/js/jquery.countdown.js"></script>
<!--jquery ui min js-->
<script src="assets/js/jquery.ui.js"></script>
<!--jquery elevatezoom min js-->
<script src="assets/js/jquery.elevatezoom.js"></script>
<!--isotope packaged min js-->
<script src="assets/js/isotope.pkgd.min.js"></script>
<!--slinky menu js-->
<script src="assets/js/slinky.menu.js"></script>
<!--instagramfeed menu js-->
<script src="assets/js/jquery.instagramFeed.min.js"></script>
<!-- Plugins JS -->
<script src="assets/js/plugins.js"></script>

<!-- Main JS -->
<script src="assets/js/main.js"></script>

<script type="text/javascript" src="assets/js/custom/cart.js"></script>

</body>

</html>