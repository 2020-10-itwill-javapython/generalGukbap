<%@page import="com.itwill.gukbap.service.UserServiceImpl"%>
<%@page import="com.itwill.gukbap.service.UserService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	System.out.println(session.getAttribute("orders"));
%>
	<jsp:include page="common_header.jsp"/>

<body>
    <!--breadcrumbs area start-->
    <div class="breadcrumbs_area">
        <div class="container">   
            <div class="row">
                <div class="col-12">
                    <div class="breadcrumb_content">
                       <h3>계정 정보</h3>
                        <ul>
                            <li><a href="index.html">메인</a></li>
                            <li>계정 정보</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>         
    </div>
    <!--breadcrumbs area end-->
    
    <!-- my account start  -->
    <section class="main_content_area">
        <div class="container">   
            <div class="account_dashboard">
                <div class="row">
                    <div class="col-sm-12 col-md-3 col-lg-3">
                        <!-- Nav tabs -->
                        <div class="dashboard_tab_button">
                            <ul role="tablist" class="nav flex-column dashboard-list">
                                <li><a href="#dashboard" data-toggle="tab" class="nav-link active">대시보드</a></li>
                                <li> <a href="#orders" data-toggle="tab" class="nav-link">주문 확인</a></li>
                                <li><a href="#address" data-toggle="tab" class="nav-link">주소지 관리</a></li>
                                <li><a href="#account-details" data-toggle="tab" class="nav-link">계정정보</a></li>
                                <li><a href="login.html" class="nav-link">로그아웃</a></li>
                            </ul>
                        </div>    
                    </div>
                    <div class="col-sm-12 col-md-9 col-lg-9">
                        <!-- Tab panes -->
                        <div class="tab-content dashboard_content">
                            <div class="tab-pane fade show active" id="dashboard">
                                <h3>계정 정보</h3>
                                <p><a href="#">최근 주문 내역 확인</a>, <a href="#">주소지 관리</a> 및 <a href="#">계정 비밀번호 및 정보수정</a>
                                을 하실 수 있습니다.</p>
                            </div>
                            <div class="tab-pane fade" id="orders">
                                <h3>주문 확인</h3>
                                <div class="table-responsive">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th>주문 번호</th>
                                                <th>날짜</th>
                                                <th>상태</th>
                                                <th>가격</th>
                                                <th>주문상세확인</th>	 	 	 	
                                            </tr>
                                        </thead>
                                        <tbody>
                                        	<c:forEach items="${orders}" var="order">
	                                            <tr>
	                                                <td>${order.order_no }</td>
	                                                <td>${order.order_date.substring(0, 11) }</td>
	                                                <td><span class="success">${order.order_status }</span></td>
	                                                <td>${order.order_total_price}원</td>
	                                                <td><a href="cart.jsp?o_d_no=" class="view">view</a></td>
	                                            </tr>
                                        	</c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="tab-pane" id="address">
                               <p>The following addresses will be used on the checkout page by default.</p>
                                <h4 class="billing-address">Billing address</h4>
                                <a href="#" class="view">Edit</a>
                                <p><strong>Bobby Jackson</strong></p>
                                <address>
                                    House #15<br>
                                    Road #1<br>
                                    Block #C <br>
                                    Banasree <br>
                                    Dhaka <br>
                                    1212
                                </address>
                                <p>Bangladesh</p>   
                            </div>
                            <div class="tab-pane fade" id="account-details">
                                <h3>Account details </h3>
                                <div class="login">
                                    <div class="login_form_container">
                                        <div class="account_login_form">
                                            <form action="#">
                                                <label>First Name</label>
                                                <input type="text" name="first-name">
                                                <label>Last Name</label>
                                                <input type="text" name="last-name">
                                                <label>Email</label>
                                                <input type="text" name="email-name">
                                                <label>Password</label>
                                                <input type="password" name="user-password">
                                                <label>Birthdate</label>
                                                <input type="text" placeholder="MM/DD/YYYY" value="" name="birthday">
                                                <span class="example">
                                                  (E.g.: 05/31/1970)
                                                </span>
                                                <br>
                                                <span class="custom_checkbox">
                                                    <input type="checkbox" value="1" name="optin">
                                                    <label>Receive offers from our partners</label>
                                                </span>
                                                <br>
                                                <span class="custom_checkbox">
                                                    <input type="checkbox" value="1" name="newsletter">
                                                    <label>Sign up for our newsletter<br><em>You may unsubscribe at any moment. For that purpose, please find our contact info in the legal notice.</em></label>
                                                </span>
                                                <div class="save_button primary_btn default_button">
                                                   <button type="submit">Save</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>  
        </div>        	
    </section>			
    <!-- my account end   --> 

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