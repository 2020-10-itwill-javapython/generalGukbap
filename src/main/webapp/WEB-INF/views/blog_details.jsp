<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="common_header.jsp"/>
<link rel="stylesheet" href="assets/css/custom_css/blog_details_custom.css">
<body>

     <!--header area start-->
    <!--offcanvas menu area start-->
   
    <!--offcanvas menu area end-->
    

    <!--header area end-->
    
    <!--breadcrumbs area start-->
<!--  <div class="breadcrumbs_area">
        <div class="container">   
            <div class="row">
                <div class="col-12">
                    <div class="breadcrumb_content">
                        <h3>리뷰</h3>
                        <ul>
                            <li><a href="gukbap_main">메인</a></li>
                            <li>리뷰 상세</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>         
    </div>
    -->    
    <!--breadcrumbs area end-->
    
    <!--blog body area start-->
    <div class="blog_details">
        <div class="container">
            <div class="row">
                <div class="col-lg-9 col-md-12">
                    <!--blog grid area start-->
                    <div class="blog_wrapper blog_wrapper_details">
                        <article class="single_blog">
                            <figure>
                               <div class="post_header">
                                   <h3 class="post_title">${review_with_replies[0].review_title }</h3>
                                    <div class="blog_meta">   
                                       <p>작성자 : ${reviewed_user.user_id } / 작성 날짜 : 
                                       ${review_with_replies[0].review_upload_date.substring(0,11) }</p>                                     
                                    </div>
                                </div>
                                <div class="blog_thumb">
                                   <img src="assets/img/review/${review_with_replies[0].review_image }" alt="">
                               </div>
                               <figcaption class="blog_content">
                                    <div class="post_content">
                                        <p>${review_with_replies[0].review_content }</p>
                                    </div>
                                    <div class="entry_content">
                                        <div class="post_meta">
                                            <span>태그: </span>
                                            <span><a href="shop-right-sidebar"> 국밥</a></span>
                                            <span><a href="shop-right-sidebar">, ${product_info.product_name}</a></span>
                                        </div>

                                    </div>
                               </figcaption>
                            </figure>
                        </article>
                        <div class="related_posts">
                           <h3>이 리뷰와 비슷한 리뷰들</h3>
                            <div class="row">
                            	<c:forEach items="${related_reviews }" var="related_review">
	                            	<c:choose>
	                            	<c:when test="${related_review.review_no == review_with_replies[0].review_no }">
	                            	</c:when>
	                            	<c:otherwise>
	                                <div class="col-lg-4 col-md-4 col-sm-6">
	                                    <article class="single_related">
	                                        <figure>
	                                            <div class="related_thumb">
	                                                <a href="blog_details?review_no=${related_review.review_no }"><img src="assets/img/review/${related_review.review_image }" alt=""></a>
	                                            </div>
	                                            <figcaption class="related_content">
	                                               <h4><a href="blog_details?review_no=${related_review.review_no }">${related_review.review_title }</a></h4>
	                                               <div class="blog_meta">                                        
	                                                    <span class="meta_date">${related_review.review_upload_date.substring(0,11) }	</span>
	                                                </div>
	                                            </figcaption>
	                                        </figure>
	                                    </article>
	                                </div>
	                                </c:otherwise>
	                                </c:choose>
                                </c:forEach>
                            </div>
                       </div> 
                        <div class="comments_box">
                            <h3>${review_with_replies.size() - 1 } 개의 답글	</h3>
                            <c:forEach items="${review_with_replies }" var="replies"
                            		   begin="1">
                            <div class ="comment_list">
                                <div class="comment_thumb">
                                    <img src="assets/img/blog/comment3.png.jpg" alt="">
                                </div>
                                <div class="comment_content">
                                    <div class="comment_meta">
                                        <h5>사장님</h5>
                                        <span>${replies.review_upload_date.substring(0,11) }</span> 
                                    </div>
                                    <p>${replies.review_content }</p>
                                    <div class="comment_reply">
                                        <span id = heart><i class="fa fa-heart-o" aria-hidden="true" ></i> </span>
                                    </div>
                                </div>

                            </div>
                            </c:forEach>
                        </div>
                        <c:choose>
	                        <c:when test="${!empty loginUser && loginUser.user_id.equals('admin@admin.admin') }">
	                        <div class="comments_form">
	                            <form action="write_reply" method="POST">
	                                <div class="row">
	                                    <div class="col-12">
	                                        <label for="review_comment">내용 </label>
	                                        <textarea name="review_content" id="review_comment" ></textarea>
	                                        <input type="hidden" name="review_no" value="${review_with_replies[0].review_no }">
	                                        <input type="hidden" name="review_group_no" value="${review_with_replies[0].review_group_no }">
	                                        <input type="hidden" name="review_step" value="${review_with_replies[0].review_step }">
	                                        <input type="hidden" name="review_depth" value="${review_with_replies[0].review_depth }">
	                                        <input type="hidden" name="product_no" value="${review_with_replies[0].product_no }">
	                                        <input type="hidden" name="o_d_no" value="${review_with_replies[0].o_d_no }">
	                                    </div> 
	                                </div>
	                                <button class="button" type="submit">리뷰 작성</button>
	                            </form>    
	                        </div>
	                        </c:when>
	                        <c:otherwise>
	                        <p></p>
	                        </c:otherwise>
                        </c:choose>
                    </div>
                    <!--blog grid area start-->
                </div>
                <div class="col-lg-3 col-md-12">
                    <div class="blog_sidebar_widget">
                        <div class="widget_list widget_search">
                            
                        
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--blog section area end-->

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
<script src="assets/js/custom/blog_details_custom.js"></script>



</body>

</html>