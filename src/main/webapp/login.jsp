<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

     <!--header area start-->
<jsp:include page="common_header.jsp"/>
<link rel="stylesheet" href="assets/css/custom_css/login_custom.css">
    <!--offcanvas menu area start-->
   
    <!--header area end-->

    <!--breadcrumbs area start-->
    <div class="breadcrumbs_area">
        <div class="container">   
            <div class="row">
                <div class="col-12">
                    <div class="breadcrumb_content">
                       <h3>로그인</h3>
                        <ul>
                            <li><a href="index.jsp">메인</a></li>
                            <li>로그인</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>         
    </div>
    <!--breadcrumbs area end-->
    
    <!-- customer login start -->
    <div class="customer_login">
        <div class="container">
            <div class="row">
               <!--login area start-->
                <div class="offset-md-3 col-md-6 offset-md-3">
                    <div class="account_form">
                        <h2>로그인</h2>
                        <form id="login_action_form" action="login_action" method="POST">
                            <p>   
                                <label>아이디(이메일)<span>*</span></label>
                                <c:choose>
                                <c:when test="${empty user_id }">
                                	<input id="user_id" name="user_id" type="text"
                                 	value="${cookie['saved_id'].value}">
                                </c:when>
                                <c:otherwise>
                                	<input id="user_id" name="user_id" type="text"
                                 	value="${user_id}">
                                </c:otherwise>
                                </c:choose>
                             </p>
                             <p>   
                                <label>비밀번호 <span>*</span></label>
                                <input id="password" name="password" type="password"
                                	  >
                                <c:if test="${empty loginUser}">
	                            	<span id="login_error_msg">${msg }</span>   
                                </c:if>
                             </p>
                            <div class="login_submit">
                               <a href="#">비밀번호 찾기</a>
                                <label for="remember">
                                <c:choose>
	                                <c:when test="${empty cookie['saved_id'].value}">
	                                    <input id="remember" name="save_id_check" type="checkbox">
	                                    아이디 저장
	                                </c:when>
	                                <c:otherwise>
	                                    <input id="remember" checked name="save_id_check" type="checkbox">
	                                    아이디 저장
	                                </c:otherwise>
                                </c:choose>
	                             </label>
                                <button type="submit">로그인</button>
                                <button type="button">회원가입</button>
                                
                            </div>

                        </form>
                     </div>    
                </div>
                <!--login area start-->

                <!--register area start-->
                <!--register area end-->
            </div>
        </div>    
    </div>
    <!-- customer login end -->

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
<script src="assets/js/jquery.validate.js"></script>
<script src="assets/js/additional-methods.js"></script>
<script src="assets/js/main.js"></script>
<script src="assets/js/custom/login_custom.js"></script>
</body>

</html>