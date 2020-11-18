<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<jsp:include page="common_header.jsp"/>
<body>

     <!--header area start-->
    <!--offcanvas menu area start-->
  
    <!--offcanvas menu area end-->
    
    
    <!--header area end-->

    <!--breadcrumbs area start-->
 <!--    <div class="breadcrumbs_area">
        <div class="container">   
            <div class="row">
                <div class="col-12">
                    <div class="breadcrumb_content">
                        <ul>
                            <li><a href="gukbap_main">메인</a></li>
                            <li>회원 리뷰</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>         
    </div>
     -->
    <!--breadcrumbs area end-->
    
    <!--blog area start-->
    <div class="blog_page_section blog_reverse mt-70">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-12">
                    <div class="blog_sidebar_widget">
                    	<div class="widget_list widget_post">
                            <div class="widget_title">
                                <h3>최근 리뷰</h3>
                            </div>
                            <c:forEach items="${latestReviews }" var="latestReview"
                            		   begin="0" end="2">
                            <div class="post_wrapper">
                                <div class="post_thumb">
                                    <a href="blog_details?review_no=${latestReview.review_no }"><img src="assets/img/review/${latestReview.review_image }" alt=""></a>
                                </div>
                                <div class="post_info">
                                    <h4><a href="blog_details?review_no=${latestReview.review_no }">${latestReview.review_title }</a></h4>
                                    <span>${latestReview.review_upload_date.substring(0,11) }</span>
                                </div>
                            </div>
                            </c:forEach>
                        </div>
                        <div class="widget_list comments">
                           <div class="widget_title">
                                <h3>최근 답글</h3>
                            </div>
                            <c:forEach items="${latest_replies }" var="replies"
                            		   begin="0" end="2">
                            <div class="post_wrapper">
                                <div class="post_thumb">
                                    <img src="assets/img/blog/comment2.png.jpg" alt="">
                                </div>
                                <div class="post_info">
                                    <span><a>사장님</a> 댓글:</span>
                                    ${replies.review_content}
                                </div>
                            </div>
                            </c:forEach>
                        </div>
                        
                        
                    </div>
                </div>
                <div class="col-lg-9 col-md-12">
                    <div class="blog_wrapper blog_wrapper_sidebar">
                        <div class="row">
                        <c:forEach var="review" items="${reviews }">
                            <div class="col-lg-4 col-md-4 col-sm-6">
                                <article class="single_blog">
                                    <figure>
                                        <div class="blog_thumb">
                                            <a href="blog_details?review_no=${review.review_no }"><img src="assets/img/review/${review.review_image }" alt=""></a>
                                        </div>
                                        <figcaption class="blog_content">
                                            <h4 class="post_title"><a href="blog_details?review_no=${review.review_no }">${review.review_title }</a></h4>
                                            <div class="articles_date">
                                            	<c:set var="review_no" value="${review.review_no}"/>
                                                 <p>${review.review_upload_date.substring(0,11) } | 
                                                 <a href="shop-right-sidebar">${reviewed_products[review_no].product_name}</a> </p>
                                            </div>
                                        </figcaption>
                                    </figure>
                                </article>
                            </div>
                        </c:forEach>
                        </div>
                    </div>
                </div>  
            </div>
        </div>
    </div>
    <!--blog area end-->
    
    <!--blog pagination area start
    <div class="blog_pagination">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="pagination">
                        <ul>
                            <li class="current">1</li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li class="next"><a href="#">next</a></li>
                            <li><a href="#">>></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    blog pagination area end-->
   
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