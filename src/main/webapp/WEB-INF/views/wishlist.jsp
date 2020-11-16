<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<jsp:include page="common_header.jsp"/>
<body>
    <!--breadcrumbs area start-->
  <!--  <div class="breadcrumbs_area">
        <div class="container">   
            <div class="row">
                <div class="col-12">
                    <div class="breadcrumb_content">
                       <h3>찜한 메뉴</h3>
                        <ul>
                            <li><a href="gukbap_main">home</a></li>
                            <li>Wishlist</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>         
    </div>
    -->  
    <!--breadcrumbs area end-->
    
    
    <!--wishlist area start -->
    <div class="wishlist_area mt-70">
        <div class="container">   
            <form action="#"> 
                <div class="row">
                    <div class="col-12">
                        <div class="table_desc wishlist">
                            <div class="cart_page" id="wishlist_list">
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
                                            <td class="product_remove"><button style="border: none; background: transparent;" name="wishlist_button" value="${wishlist.wishlist_no}" ><a>X</a></button></td>
                                            <td class="product_thumb"><img src="assets/img/product/${wishlist.product.product_image}" alt=""></td>
                                            <td class="product_name">${wishlist.product.product_name}</td>
                                            <td class="product-price">${wishlist.product.product_price}</td>
                                            <td class="product_total">

                                            
                                            <button style="border: none; background: transparent;" type="submit" name="wishlist_to_cart_button" value="${wishlist.product.product_no}" 
                                            class="btn btn-secondary" data-toggle="tooltip" data-placement="top" title="Add to cart">
                                            <a href="#">장바구니 담기</a></button>
                                            
                                            </td>
                                            
                                            
                                        </tr>
                                    </tbody>
                                    </c:forEach>
                                </table>   
                            </div>  

                        </div>
                     </div>
                 </div>

            </form> 
            
        </div>
    </div>
    <!--wishlist area end -->
    
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

<script type="text/javascript" src="assets/js/custom/wishlist.js"></script>

</body>

</html>