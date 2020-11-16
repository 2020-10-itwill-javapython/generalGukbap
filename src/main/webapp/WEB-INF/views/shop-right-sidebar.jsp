<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html class="no-js" lang="en">


<jsp:include page="common_header.jsp"/>
<link rel="stylesheet" href="assets/css/custom_css/shop-right-sidebar-custom.css">    


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
                        <h3>Shop</h3>
                        <ul>
                            <li><a href="index.html">home</a></li>
                            <li>shop</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>         
    </div>
    <!--breadcrumbs area end-->
    
    <!--shop  area start-->
    <div class="shop_area mt-70 mb-70">
        <div class="container">
            <div class="row">
                <div class="col-lg-9 col-md-12">
                    <!--shop wrapper start-->
                    <!--shop toolbar start-->
                    <div class="shop_toolbar_wrapper">
                        <div class="shop_toolbar_btn">

                            <button data-role="grid_3" type="button" class="active btn-grid-3" data-toggle="tooltip" title="3"></button>

                            <button data-role="grid_4" type="button"  class=" btn-grid-4" data-toggle="tooltip" title="4"></button>

                            <button data-role="grid_list" type="button"  class="btn-list" data-toggle="tooltip" title="List"></button>
                        </div>
                      
                    </div>
                     <!--shop toolbar end-->
                     <div id="product_List"class="row shop_wrapper">
                     <c:forEach items="${productList}" var="product">
                        <div class="col-lg-4 col-md-4 col-sm-6 col-12 ">
                            <div class="single_product">
                                <div class="product_thumb">
                                        <a class="primary_img" href="product-details?product_no=${product.product_no}"><img src="assets/img/product/${product.product_image}" alt=""></a>
                                        <a class="secondary_img" href="product-details?product_no=${product.product_no}"><img src="assets/img/product/${product.product_image}" alt=""></a>
                                  		<c:choose>
                                  			<c:when test="${product.product_isOnSale}">
												<div class="label_product">
													<span class="label_sale">할인</span>
												</div>
											</c:when>
											<c:otherwise>
											</c:otherwise>
										</c:choose>
														
                                        <div class="action_links">
                                            <ul>                                             
                                               <button style="border: none; background: transparent;" name="add_to_cart_button" value="${product.product_no}" >
                                               <li class="add_to_cart"><a type="button" title="카트추가"><span class="lnr lnr-cart"></span></a></li></button>
                                                                                                                             
                                               <li class="quick_button" ><a href="cart" product_no="${product.product_no}" data-toggle="modal" data-target="#modal_box"  title="quick view"> 
                                               <span class="lnr lnr-magnifier"  ></span></a></li>
                                               
                                               <button style="border: none; background: transparent;" name="wishlist_button" value="${product.product_no }" >
                                               <li class="wishlist"><a title="찜 하기"><span class="lnr lnr-heart"></span></a></li></button>                                                 
                                            </ul>                                   
                                         </div>
                                   </div>
                                        
                                    
                                <div class="product_content grid_content">
                                        <h4 class="product_name"><a href="product-details?product_no=${product.product_no}" id="product_name">${product.product_name}</a></h4>
										<c:choose>
											<c:when test="${product.product_isOnSale}">
												<div class="price_box">
													<span class="current_price">${product.product_price*0.7}원</span>
													<span class="old_price">${product.product_price}원</span>
												</div>
											</c:when>
											<c:otherwise>
												<div class="price_box">
													<span class="current_price">${product.product_price}원</span>
													<span class="old_price">${product.product_price}원</span>
												</div>
											</c:otherwise>
										</c:choose>
									</div>
                                <div class="product_content list_content">
                                    <h4 class="product_name"><a href="product-details?product_no=${product.product_no}">${product.product_name}</a></h4>
										<c:choose>
											<c:when test="${product.product_isOnSale}">
												<div class="price_box">
													<span class="current_price">${product.product_price*0.7}원</span>
													<span class="old_price">${product.product_price}원</span>
												</div>
											</c:when>
											<c:otherwise>
												<div class="price_box">
													<span class="current_price">${product.product_price}원</span>
													<span class="old_price">${product.product_price}원</span>
												</div>
											</c:otherwise>
										</c:choose>


										<div class="product_desc">
                                        <p>${product.product_desc}</p>
                                    </div>
                                    <div class="action_links list_action_right">
                                    <input id="modal_product_no" type="hidden" value="${product.product_no }"/>
                                        <ul>
                                          
                                            <li class="add_to_cart" ><button type="submit" name="add_to_cart_button" value="${product.product_no }" 
                                            class="btn btn-secondary" data-toggle="tooltip" data-placement="top" title="Add to cart">장바구니 추가</button>

                                            </li>
                                            <li class="quick_button"><a href="#" product_no="${product.product_no}" data-toggle="modal" data-target="#modal_box"  title="quick view"> <span class="lnr lnr-magnifier"></span></a></li>
                                            <button style="border: none; background: transparent;" name="wishlist_button" value="${product.product_no }" ><li class="wishlist"><a title="Add to Wishlist"><span class="lnr lnr-heart"></span></a></li></button>   
                                          
                                        </ul>
                                   
                                    </div>
                                </div>
                                </div>
                            </div>
                            </c:forEach>
                        </div>
                       
                     
                    
                  
              
                    <!--shop toolbar end-->
                    <!--shop wrapper end-->
                </div>
                <div class="col-lg-3 col-md-12">
                   <!--sidebar widget start-->
                    <aside class="sidebar_widget">
                        <div class="widget_inner">
                            <div class="widget_list widget_categories">
                        
                                <ul>
                                    <li class="widget_sub_categories sub_categories1" id="main" ><a href="#">메인메뉴</a>
                                    </li>
                                    <li class="widget_sub_categories sub_categories2" id="side"><a href="javascript:void(0)">사이드메뉴</a>
                                      
                                    </li>
                                    <li class="widget_sub_categories sub_categories3" id="drink"><a href="javascript:void(0)">주류 및 음료</a>
                                        
                                    </li>
                                </ul>
                            </div>
                     
                        </div>
                    </aside>
                    <!--sidebar widget end-->
                </div>
            </div>
        </div>
    </div>
    <!--shop  area end-->
    
  <!--footer area start-->
   
    <!--footer area end-->
    
    <!-- modal area start-->
    <div class="modal fade" id="modal_box" tabindex="-1" role="dialog"  aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true"><i class="icon-x"></i></span>
                </button>
                <div class="modal_body">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-5 col-md-5 col-sm-12">
                                <div class="modal_tab">  
                                    <div class="tab-content product-details-large">
                                        <div class="tab-pane fade show active" id="tab1" role="tabpanel" >
                                            <div class="modal_tab_img">
                                                <a href="#" id="modal_detail_image"><img src="" alt=""></a>    
                                            </div>
                                        </div>
                                        
                                        <div class="tab-pane fade" id="tab2" role="tabpanel">
                                            <div class="modal_tab_img">
                                                <a href="#"><img src="" alt=""></a>    
                                            </div>
                                        </div>
                                        <div class="tab-pane fade" id="tab3" role="tabpanel">
                                            <div class="modal_tab_img">
                                                <a href="#"><img src="" alt=""></a>    
                                            </div>
                                        </div>
                                        <div class="tab-pane fade" id="tab4" role="tabpanel">
                                            <div class="modal_tab_img">
                                                <a href="#"><img src="" alt=""></a>    
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div class="modal_tab_button">    
                                        <ul class="nav product_navactive owl-carousel" role="tablist">
                                            <li >
                                                <a class="nav-link active" data-toggle="tab" href="#tab1" role="tab" aria-controls="tab1" aria-selected="false"><img src="" alt=""></a>
                                            </li>
                                            <li>
                                                 <a class="nav-link" data-toggle="tab" href="#tab2" role="tab" aria-controls="tab2" aria-selected="false"><img src="" alt=""></a>
                                            </li>
                                            <li>
                                               <a class="nav-link button_three" data-toggle="tab" href="#tab3" role="tab" aria-controls="tab3" aria-selected="false"><img src="" alt=""></a>
                                            </li>
                                            <li>
                                               <a class="nav-link" data-toggle="tab" href="#tab4" role="tab" aria-controls="tab4" aria-selected="false"><img src="" alt=""></a>
                                            </li>

                                        </ul>
                                    </div>
                                       
                                </div>  
                            </div> 
                            <div class="col-lg-7 col-md-7 col-sm-12">
                                <div class="modal_right">
                                    <div class="modal_title mb-10">
                                        <h2 id="modal_detail_title">Donec Ac Tempus</h2> 
                                    </div>
                                    <div class="modal_price mb-10">
                                        <span class="new_price" id="modal_detail_price">원</span>
                                    </div>
                                    <div class="modal_description mb-15">
                                        <p id="modal_detail_desc">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia iste laborum ad impedit pariatur esse optio tempora sint ullam autem deleniti nam in quos qui nemo ipsum numquam, reiciendis maiores quidem aperiam, rerum vel recusandae </p>    
                                    </div> 
                                    <div class="variants_selects">
                                    
                                        <div class="variants_size">
                                        <!-- 
                                           <h2>size</h2>
                                           <select class="select_option">
                                               <option selected value="1">기본</option>
                                               <option value="2">특</option>                                  
                                           </select>
                                            -->
                                        </div>
                                     
                                        <div class="modal_add_to_cart">
                                            <form action="add_to_cart" method="post">
                                                <input min="1" max="100" step="1" value="1" type="number" name="pty">
                                                <button id="modal_button_p_no" type="submit" name="product_no" value="">장바구니 추가</button>
                                            </form>
                                        </div>   
                                    </div>
                                    <!-- 
                                    <div class="modal_social">
                                        <h2>Share this product</h2>
                                        <ul>
                                            <li class="facebook"><a href="#"><i class="fa fa-facebook"></i></a></li>
                                            <li class="twitter"><a href="#"><i class="fa fa-twitter"></i></a></li>
                                            <li class="pinterest"><a href="#"><i class="fa fa-pinterest"></i></a></li>
                                            <li class="google-plus"><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                            <li class="linkedin"><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                        </ul>    
                                    </div>
                                     -->      
                                </div>    
                            </div>    
                        </div>     
                    </div>
                </div>    
            </div>
        </div>
    </div>
    <!-- modal area end-->
    
    
 <jsp:include page="common_footer.jsp"/>

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
<script type="text/javascript" src="assets/js/custom/shop-right-sidebar-custom.js"></script>


</body>

</html>