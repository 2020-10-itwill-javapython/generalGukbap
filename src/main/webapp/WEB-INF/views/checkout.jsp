<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
	<jsp:include page="common_header.jsp"/>

<body>

    <!--breadcrumbs area start-->
    <div class="breadcrumbs_area">
        <div class="container">   
            <div class="row">
                <div class="col-12">
                    <div class="breadcrumb_content">
                       <h3>결제하기</h3>
                        <ul>
                            <li><a href="index.html">메인</a></li>
                            <li>결제하기</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>         
    </div>
    <!--breadcrumbs area end-->
    
    <!--Checkout page section-->
    <div class="Checkout_section mt-70">
       <div class="container">
            <div class="row">
               <div class="col-12">
               </div>
            </div>
            <div class="checkout_form">
                <div class="row">
                    <div class="col-lg-6 col-md-6">
                        <form action="" id="">
                            <h3>주문 정보</h3>
                            <div class="row">

                                <div class="col-lg-6 mb-20">
                                    <label>이름 <span>*</span></label>
                                    <input type="text" readonly value="${loginUser.user_first_name }">    
                                </div>
                                <div class="col-lg-6 mb-20">
                                    <label>성  <span>*</span></label>
                                    <input type="text" readonly value="${loginUser.user_last_name }"> 
                                </div>
                                <div class="col-lg-12 mb-20">
                                    <label>생년월일  <span>*</span></label>
                                    <input placeholder="xxxx/xx/xx" readonly type="text" 
                                    value="${loginUser.user_birthdate.replaceAll('-', '/').substring(0,11) }"> 
                                </div>
                                <div class="col-12 mb-20">
                                    <label>회사이름(옵션)</label>
                                    <input type="text" readonly value="${loginUser.addresses[0].address_company_name }">     
                                </div>
                                <div class="col-12 mb-20">
                                    <label>거리 주소  <span>*</span></label>
                                    <input placeholder="번지 및 도로명" readonly type="text"
                                    value="${loginUser.addresses[0].address_street }">     
                                </div>
                                <div class="col-12 mb-20">
                                    <input placeholder="상세 주소" readonly type="text"
                                    value="${loginUser.addresses[0].address_street_optional }">     
                                </div>
                                <div class="col-12 mb-20">
                                    <label>시 / 도시 <span>*</span></label>
                                    <input  type="text" readonly
                                    value="${loginUser.addresses[0].address_city }">    
                                </div> 
                                 <div class="col-12 mb-20">
                                    <label>국가 <span>*</span></label>
                                    <input type="text" readonly
                                    value="${loginUser.addresses[0].address_state }">    
                                </div> 
                                <div class="col-lg-12 mb-20">
                                    <label>전화번호<span>*</span></label>
                                    <input type="text" readonly
                                    value="${loginUser.user_phone}"> 

                                </div> 
                                <div class="col-12">
                                    <div class="order-notes">
                                         <label for="order_note">주문 노트</label>
                                        <textarea id="order_note" placeholder="주문에 대한 참고 사항"></textarea>
                                    </div>    
                                </div>     	    	    	    	    	    	    
                            </div>
                        </form>    
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <form action="#">    
                            <h3>주문 상세</h3> 
                            <div class="order_table table-responsive">
                                <table>
                                    <thead>
                                        <tr>
                                            <th>제품</th>
                                            <th>가격</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<c:forEach items="${order.orderDetailList }" var="orderDetail">
	                                        <tr>
	                                            <td>${orderDetail.product.product_name }</td>
	                                            <td>${orderDetail.o_d_product_count * orderDetail.product.product_price } 원</td>
	                                        </tr>
                                    	</c:forEach>
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <th>장바구니 합계</th>
                                            <td>${order.order_total_price } 원</td>
                                        </tr>
                                        <tr>
                                            <th>배송비</th>
                                            <td><strong>3,000 원</strong></td>
                                        </tr>
                                        <tr class="order_total">
                                            <th>주문 합계</th>
                                            <td><strong>${order.order_total_price + 3000 } 원</strong></td>
                                        </tr>
                                    </tfoot>
                                </table>     
                            </div>
                            <div class="payment_method">
                               <div class="panel-default">
                                    <div id="method" class="collapse one" data-parent="#accordion">
                                        <div class="card-body1">
                                           <p>Please send a check to Store Name, Store Street, Store Town, Store State / County, Store Postcode.</p>
                                        </div>
                                    </div>
                                </div> 
                               <div class="panel-default">
                                    <label for="payment_defult" data-toggle="collapse" data-target="#collapsedefult" aria-controls="collapsedefult">PayPal <img src="assets/img/icon/papyel.png" alt=""></label>

                                    <div id="collapsedefult" class="collapse one" data-parent="#accordion">
                                        <div class="card-body1">
                                           <p>Pay via PayPal; you can pay with your credit card if you donât have a PayPal account.</p> 
                                        </div>
                                    </div>
                                </div>
                                <div class="order_button" >
                                    <button id="checkout_action" type="submit">결제</button> 
                                    <input type="hidden" value="${order.order_no}">
                                </div>    
                            </div> 
                        </form>         
                    </div>
                </div> 
            </div> 
        </div>       
    </div>
    <!--Checkout page section end-->
    
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
<script src="assets/js/custom/checkout_custom.js"></script>



</body>

</html>