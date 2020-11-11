<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>국밥부장관 </title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">
    
    <!-- CSS 
    ========================= -->
    <!--bootstrap min css-->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <!--owl carousel min css-->
    <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
    <!--slick min css-->
    <link rel="stylesheet" href="assets/css/slick.css">
    <!--magnific popup min css-->
    <link rel="stylesheet" href="assets/css/magnific-popup.css">
    <!--font awesome css-->
    <link rel="stylesheet" href="assets/css/font.awesome.css">
    <!--ionicons css-->
    <link rel="stylesheet" href="assets/css/ionicons.min.css">
    <!--linearicons css-->
    <link rel="stylesheet" href="assets/css/linearicons.css">
    <!--animate css-->
    <link rel="stylesheet" href="assets/css/animate.css">
    <!--jquery ui min css-->
    <link rel="stylesheet" href="assets/css/jquery-ui.min.css">
    <!--slinky menu css-->
    <link rel="stylesheet" href="assets/css/slinky.menu.css">
    <!--plugins css-->
    <link rel="stylesheet" href="assets/css/plugins.css">
   
    
    <!-- Main Style CSS -->
    <link rel="stylesheet" href="assets/css/style.css">
    
    
    <!--modernizr min js here-->
    <script src="assets/js/vendor/modernizr-3.7.1.min.js"></script>
</head>

<body>
   
    <!--header area start-->
    
    <!--offcanvas menu area start-->
	<div class="offcanvas_menu">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="canvas_open">
						<a href="javascript:void(0)"><i class="icon-menu"></i></a>
					</div>
					<div class="offcanvas_menu_wrapper">
						<div class="canvas_close">
							<a href="javascript:void(0)"><i class="icon-x"></i></a>
						</div>


						<div class="call-support">
							<p>
								<a href="tel:(042)82828282">(042)82828282</a> 전화문의
							</p>
						</div>
						<div id="menu" class="text-left ">
							<ul class="offcanvas_main_menu">
								<li class="menu-item-has-children active"><a
									href="gukbap_main">메인</a></li>
								<li class="menu-item-has-children"><a
									href="shop-right-sidebar">메뉴</a></li>
								<li class="menu-item-has-children"><a
									href="blog-sidebar.jsp">리뷰</a></li>
								<li class="menu-item-has-children"><a href="chat.jsp">문의</a>
								</li>
									<li class="menu-item-has-children">
                                    <a href="#">회사소개 </a>
                                    <ul class="sub-menu">
                                       <li><a href="about.jsp">about</a></li>
											<li><a href="contact">contact</a></li>
											<li><a href="services">services</a></li>
                                    </ul>
                                </li>
							
							</ul>
						</div>
						<div class="offcanvas_footer">
							<span><a href="#"><i class="fa fa-envelope-o"></i>
									jaeil759@naver.com</a></span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--offcanvas menu area end-->
    
    <header>
        <div class="main_header">
          <!--   <div class="header_top">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-6 col-md-6">
                            <div class="language_currency">
                                <ul>
                                    <li class="language"><a href="#"> Language <i class="icon-right ion-ios-arrow-down"></i></a>
                                        <ul class="dropdown_language">
                                            <li><a href="#">French</a></li>
                                            <li><a href="#">Spanish</a></li>
                                            <li><a href="#">Russian</a></li>
                                        </ul>
                                    </li>
                                    <li class="currency"><a href="#"> Currency <i class="icon-right ion-ios-arrow-down"></i></a>
                                        <ul class="dropdown_currency">
                                            <li><a href="#">â¬ Euro</a></li>
                                            <li><a href="#">Â£ Pound Sterling</a></li>
                                            <li><a href="#">$ US Dollar</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="header_social text-right">
                                <ul>
                                    <li><a href="#"><i class="ion-social-twitter"></i></a></li>
                                    <li><a href="#"><i class="ion-social-googleplus-outline"></i></a></li>
                                    <li><a href="#"><i class="ion-social-youtube-outline"></i></a></li>
                                    <li><a href="#"><i class="ion-social-facebook"></i></a></li>
                                    <li><a href="#"><i class="ion-social-instagram-outline"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div> -->
            <div class="header_middle">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-2 col-md-3 col-sm-3 col-3">
                            <div class="logo">
                                <a href="gukbap_main"><img src="assets/img/logo/logo.png" alt=""></a>
                            </div>
                        </div>
                        <div class="col-lg-10 col-md-6 col-sm-7 col-8">
                            <div class="header_right_info">
                                <div class="search_container mobail_s_none">
                                   <form action="#">
                                       <div class="hover_category">
                                                     
                                       </div>
                                        <div class="search_box">
                                            <input placeholder="Search product..." type="text">
                                             <button type="submit"><span class="lnr lnr-magnifier"></span></button>
                                        </div>
                                    </form>
                                </div>
                                <div class="header_account_area">
                                    <div class="header_account_list register">
                                        <ul>

                                        	<c:choose>
	                                        	<c:when test="${empty loginUser }">
		                                            <li><a href="login">Register</a></li>
		                                            <li><span>/</span></li>
		                                            <li><a href="login">Login</a></li>
	                                        	</c:when>
	                                        	<c:otherwise>
	                                        		<li><a href="logout_action">logout</a></li>
	                                        	</c:otherwise>
                                        	</c:choose>

                                        </ul>
                                    </div>
                                    <div class="header_account_list header_wishlist">
                                        <a href="wishlist.html"><span class="lnr lnr-heart"></span> <span class="item_count"></span> </a>
                                    </div>
                                    <div class="header_account_list  mini_cart_wrapper">
                                       <a href="cart"><span class="lnr lnr-cart"></span><span class="item_count"></span></a>
                                        <!--mini cart-->
                                        
                                        <!--mini cart end-->
                                   </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="header_bottom sticky-header">
                <div class="container">  
                    <div class="row align-items-center">
                        <div class="col-12 col-md-6 mobail_s_block">
                            <div class="search_container">
                               <form action="#">
                                   <div class="hover_category">
                                   </div>
                                    <div class="search_box">
                                        <input placeholder="Search product..." type="text">
                                         <button type="submit"><span class="lnr lnr-magnifier"></span></button>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6">
                            <div class="categories_menu">
                                <div class="categories_title">
                                    <h2 class="categori_toggle">All Cattegories</h2>
                                </div>
                                <div class="categories_menu_toggle">
                                    <ul>
                                        <li class="menu_item_children"><a href="gukbap_main">메인</a>
                                        </li>
                                        <li class="menu_item_children"><a href="#">메뉴</a>
                                        </li>
                                        <li class="menu_item_children"><a href="#">리뷰</a>
                                        </li>
                                        <li class="menu_item_children"><a href="chat">문의</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        
                        <div class="col-lg-6">
                            <!--main menu start-->
                            <div class="main_menu menu_position"> 
                                <nav>  
                                <!--  <li><a class="active"  href="index.html">home<i class="fa fa-angle-down"></i></a>
                                            <ul class="sub_menu">
                                                <li><a href="index.html">Home shop 1</a></li>
                                                <li><a href="index-2.html">Home shop 2</a></li>
                                                <li><a href="index-3.html">Home shop 3</a></li>
                                                <li><a href="index-4.html">Home shop 4</a></li>
                                                <li><a href="index-5.html">Home shop 5</a></li>
                                            </ul>
                                        </li>-->
                                    <ul>
                                        <li><a class="active"  href="about.jsp">회사소개<i class="fa fa-angle-down"></i></a>
                                         <ul class="sub_menu">
                                                <li><a href="about">about</a></li>
                                                <li><a href="contact">contact</a></li>
                                                <li><a href="services">services</a></li>
                                            </ul>
                                            </li>
                                        <li class="mega_items"><a href="shop-right-sidebar">메뉴</a></li>
                                        <li><a href="blog-sidebar">리뷰</a></li>
                                        <li><a href="chat">문의</a></li> 
                                    </ul>  
                                </nav> 
                            </div>
                            <!--main menu end-->
                        </div>
                        <div class="col-lg-3">
                            <div class="call-support">
                                <p><a href="tel:(042)82828282">(042)82828282</a> Customer Support</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> 
    </header>
</html>