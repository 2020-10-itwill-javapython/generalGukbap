<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
						<h3>장바구니</h3>
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
                            <div class="cart_page">
                                <table>
                            <thead>
                                <tr>
                                    <th class="product_remove">삭제</th>
                                    <th class="product_thumb">이미지</th>
                                    <th class="product_name">메뉴</th>
                                    <th class="product-price">가격</th>
                                    <th class="product_quantity">수량</th>
                                    <th class="product_total">합계</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                   <td class="product_remove"><a href="#"><i class="fa fa-trash-o"></i>해당 메뉴가 삭제되었습니다. 창 띄우기</a></td>
                                    <td class="product_thumb"><a href="#"><img src="assets/img/product/productbig1.jpg" alt="">상세보기 창으로 이동</a></td>
                                    <td class="product_name"><a href="#">메뉴명</a></td>
                                    <td class="product-price">가격</td>
                                    <td class="product_quantity"><label>수량</label> <input min="1" max="100" value="1" type="number"></td>
                                    <td class="product_total">총 가격</td>


                                </tr>

                            </tbody>
                        </table>   
                            </div>  
                            <div class="cart_submit">
                                <button type="submit">장바구니 수정</button>
                            </div>      
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
                                       <p class="cart_amount">소계</p>
                                   </div>
                                   <div class="cart_subtotal ">
                                       <p>배송비</p>
                                       <p class="cart_amount">배송비</p>
                                   </div>
                                   <a href="#"></a>

                                   <div class="cart_subtotal">
                                       <p>총 주문금액</p>
                                       <p class="cart_amount">총 주문금액</p>
                                   </div>
                                   <div class="checkout_btn">
                                       <a href="cart">주문하기</a>
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



</body>

</html>