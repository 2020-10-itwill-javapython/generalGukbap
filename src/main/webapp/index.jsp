<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<jsp:include page="common_header.jsp"/>
    <!--header area end-->
    
    <!--slider area start-->
            <div class="single_slider d-flex align-items-center" data-bgimg="assets/img/slider/slider2.jpg">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="slider_content">
                                <h1>Fresh Vegetables</h1>
                                <h2>Natural Farm Products</h2>
                                <p>
								Widest range of farm-fresh Vegetables, Fruits & seasonal produce
							     </p> 
                                <a href="index.jsp">Read more </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    <!--slider area end-->
    
    <!--shipping area start-->
    
    <!--shipping area end-->
    
    <!--product area start -->
    <!-- 대표메뉴 시작 -->
    <!-- 대표메뉴 시작 -->
    <!-- 대표메뉴 시작 -->
    <div class="product_area  mb-64">
            <div class="product_container">  
               <div class="row">
                   <div class="col-12">
                    <div class="product_header">
                        <div class="section_title">
                           <p>국밥부장관</p>
                           <h2>대표메뉴</h2>
                        </div>
                    </div>
                        <div class="tab-content">
                            <div class="tab-pane fade show active" id="plant1" role="tabpanel">
                                <div class="product_carousel product_column5 owl-carousel">
                                	<!-- 첫번째 열 -->
                                    <div class="product_items">
                                    	<!-- 첫번째 메뉴 -->
                                        <article class="single_product">
                                            <figure>
                                                <div class="product_thumb">
                                                	<a class="primary_img" href="product-details.jsp"><img src="assets/img/product/${product.product_image}" alt=""></a>
                                       				<a class="secondary_img" href="product-details.jsp"><img src="assets/img/product/${product.product_image}" alt=""></a>
                                                    <div class="label_product">
                                                    </div>
                                                    <div class="action_links">
                                                        <ul>
                                                            <li class="add_to_cart"><a href="cart.html" title="Add to cart"><span class="lnr lnr-cart"></span></a></li>
                                                            <li class="quick_button" ><a href="#" product_no="${product.product_no}" data-toggle="modal" data-target="#modal_box" title="quick view"> <span class="lnr lnr-magnifier"></span></a></li>
                                                            <li class="wishlist"><a href="wishlist.html" title="Add to Wishlist"><span class="lnr lnr-heart"></span></a></li>  
                                                        </ul>
                                                    </div>
                                                </div>
                                                <figcaption class="product_content">
                                                    <h4 class="product_name"><a href="product-details.html">굴국밥</a></h4>
                                                    <p><a href="#">국밥</a></p>
                                                    <div class="price_box"> 
                                                        <span class="current_price">8000</span>
                                                    </div>
                                                </figcaption>
                                            </figure>
                                        </article>
                                    </div>
                                    
                                    <!-- 두번째 열 -->
                                    <div class="product_items">
                                    	 <!-- 두번째 메뉴 -->
                                        <article class="single_product">
                                            <figure>
                                                <div class="product_thumb">
                                                    <a class="porkgukbap.jpg" href="product-details.html"><img src="assets/img/product/porkgukbap.jpg" alt=""></a>
                                                    <a class="secondary_img" href="product-details.html"><img src="assets/img/product/product4.jpg" alt=""></a>
                                                    <div class="label_product">
                                                    </div>
                                                    <div class="action_links">
                                                        <ul>
                                                            <li class="add_to_cart"><a href="cart.html" title="Add to cart"><span class="lnr lnr-cart"></span></a></li>
                                                            <li class="quick_button"><a href="#" data-toggle="modal" data-target="#modal_box"  title="quick view"> <span class="lnr lnr-magnifier"></span></a></li>
                                                            <li class="wishlist"><a href="wishlist.html" title="Add to Wishlist"><span class="lnr lnr-heart"></span></a></li>  
                                                        </ul>
                                                    </div>
                                                </div>
                                                <figcaption class="product_content">
                                                    <h4 class="product_name"><a href="product-details.html">돼지국밥</a></h4>
                                                    <p><a href="#">국밥</a></p> 
                                                    <div class="price_box"> 
                                                        <span class="current_price">8000</span>
                                                    </div>
                                                </figcaption>
                                            </figure>
                                        </article>
                                    </div>
                                    
                                    <!-- 세번째 열 -->
                                    <div class="product_items">
                                        <!-- 세번째 메뉴 -->
                                    	<article class="single_product">
                                            <figure>
                                                <div class="product_thumb">
                                                    <a class="cowgukbap.jpg" href="product-details.html"><img src="assets/img/product/cowgukbap.jpg" alt=""></a>
                                                    <a class="secondary_img" href="product-details.html"><img src="assets/img/product/product4.jpg" alt=""></a>
                                                    <div class="label_product">
                                                    </div>
                                                    <div class="action_links">
                                                        <ul>
                                                            <li class="add_to_cart"><a href="cart.html" title="Add to cart"><span class="lnr lnr-cart"></span></a></li>
                                                            <li class="quick_button"><a href="#" data-toggle="modal" data-target="#modal_box"  title="quick view"> <span class="lnr lnr-magnifier"></span></a></li>
                                                            <li class="wishlist"><a href="wishlist.html" title="Add to Wishlist"><span class="lnr lnr-heart"></span></a></li>  
                                                        </ul>
                                                    </div>
                                                </div>
                                                <figcaption class="product_content">
                                                    <h4 class="product_name"><a href="product-details.html">소고기국밥</a></h4>
                                                    <p><a href="#">국밥</a></p> 
                                                    <div class="price_box"> 
                                                        <span class="current_price">8500</span>
                                                    </div>
                                                </figcaption>
                                            </figure>
                                        </article>
                                    </div>
                                    
                                    <!-- 네번째 열 -->
                                    <div class="product_items">
                                        <!-- 네번째 메뉴 -->
                                        <article class="single_product">
                                            <figure>
                                                <div class="product_thumb">
                                                    <a class="sundaogukbap.jpg" href="product-details.html"><img src="assets/img/product/sundaogukbap.jpg" alt=""></a>
                                                    <a class="secondary_img" href="product-details.html"><img src="assets/img/product/product8.jpg" alt=""></a>
                                                    <div class="label_product">
                                                    </div>
                                                    <div class="action_links">
                                                        <ul>
                                                            <li class="add_to_cart"><a href="cart.html" title="Add to cart"><span class="lnr lnr-cart"></span></a></li>
                                                            <li class="quick_button"><a href="#" data-toggle="modal" data-target="#modal_box"  title="quick view"> <span class="lnr lnr-magnifier"></span></a></li>
                                                            <li class="wishlist"><a href="wishlist.html" title="Add to Wishlist"><span class="lnr lnr-heart"></span></a></li>  
                                                        </ul>
                                                    </div>
                                                </div>
                                                <figcaption class="product_content">
                                                    <h4 class="product_name"><a href="product-details.html">순대국밥</a></h4>
                                                   	<p><a href="#">국밥</a></p>
                                                    <div class="price_box"> 
                                                        <span class="current_price">8000</span>
                                                    </div>
                                                </figcaption>
                                            </figure>
                                        </article>
                                    </div>
								</div>  
							</div>
						</div>
					</div>        
				</div>   
			</div> 
	</div>
    <!-- 대표메뉴 끝 -->
    <!-- 대표메뉴 끝 -->
    <!-- 대표메뉴 끝 -->                        
    <!--product area end-->
    
    <!--banner area start-->
   
    <!--banner area end-->
        
    <!--product area start-->
    <!-- 할인메뉴 시작 -->
    <!-- 할인메뉴 시작 -->
    <!-- 할인메뉴 시작 -->
    <div class="product_area product_deals mb-65">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <div class="section_title">
                      <p>국밥부장관</p>
                      <h2>오늘의 할인</h2>
                    </div>
                </div>
            </div> 
             <div class="product_container">  
               <div class="row">
                   <div class="col-12">
                        <div class="product_carousel product_column5 owl-carousel">
                            <article class="single_product">
                                <figure>
                                    <div class="product_thumb">
                                        <a class="primary_img" href="product-details.html"><img src="assets/img/product/product14.jpg" alt=""></a>
                                        <a class="secondary_img" href="product-details.html"><img src="assets/img/product/product15.jpg" alt=""></a>
                                        <div class="label_product">
                                            <span class="label_sale">할인</span>
                                            <!--  <span class="label_new">New</span> -->
                                        </div>
                                        <div class="product_timing">
                                            <div data-countdown="2021/12/15"></div>
                                        </div>
                                        <div class="action_links">
                                            <ul>
                                                <li class="add_to_cart"><a href="cart.html" title="Add to cart"><span class="lnr lnr-cart"></span></a></li>
                                                <li class="quick_button"><a href="#" data-toggle="modal" data-target="#modal_box"  title="quick view"> <span class="lnr lnr-magnifier"></span></a></li>
                                                <li class="wishlist"><a href="wishlist.html" title="Add to Wishlist"><span class="lnr lnr-heart"></span></a></li>  
                                                <!-- <li class="compare"><a href="#" title="Add to Compare"><span class="lnr lnr-sync"></span></a></li> -->
                                            </ul>
                                        </div>
                                    </div>
                                    <figcaption class="product_content">
                                        <h4 class="product_name"><a href="product-details.html">국밥 이름</a></h4>
                                        <p><a href="#">국밥</a></p>
                                        <div class="price_box"> 
                                            <span class="current_price">할인된 가격</span>
                                            <span class="old_price">원래 가격</span>
                                        </div>
                                    </figcaption>
                                </figure>
                            </article>
                        </div>
                    </div>
                </div>        
            </div>  
        </div> 
    </div>
    <!-- 할인메뉴 끝 -->
    <!-- 할인메뉴 끝 -->
    <!-- 할인메뉴 끝 -->
    <!--product area end-->
    
    <!--banner fullwidth area satrt-->
    <!--banner fullwidth area end-->
    
    <!--product banner area satrt-->
    
    <!--product banner area end-->
    
    <!--product area start-->
    <!-- 클릭수많은 시작 -->
    <!-- 클릭수많은 시작 -->
    <!-- 클릭수많은 시작 -->
    <div class="product_area mb-65">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section_title">
                      <p>국밥부장관</p>
                       <h2>클릭수 많은 메뉴</h2>
                    </div>
                </div>
            </div> 
             <div class="product_container">  
               <div class="row">
                   <div class="col-12">
                        <div class="product_carousel product_column5 owl-carousel">
                            <article class="single_product">
                                <figure>
                                    <div class="product_thumb">
                                        <a class="primary_img" href="product-details.html"><img src="assets/img/product/product20.jpg" alt=""></a>
                                        <a class="secondary_img" href="product-details.html"><img src="assets/img/product/product21.jpg" alt=""></a>
                                        <div class="label_product">
                                            <span class="label_sale">할인</span>
                                            <!-- <span class="label_new">New</span> -->
                                        </div>
                                        <div class="action_links">
                                            <ul>
                                                <li class="add_to_cart"><a href="cart.html" title="Add to cart"><span class="lnr lnr-cart"></span></a></li>
                                                <li class="quick_button"><a href="#" data-toggle="modal" data-target="#modal_box"  title="quick view"> <span class="lnr lnr-magnifier"></span></a></li>
                                                <li class="wishlist"><a href="wishlist.html" title="Add to Wishlist"><span class="lnr lnr-heart"></span></a></li>  
                                                <!-- <li class="compare"><a href="#" title="Add to Compare"><span class="lnr lnr-sync"></span></a></li> -->
                                            </ul>
                                        </div>
                                    </div>
                                    <figcaption class="product_content">
                                        <h4 class="product_name"><a href="product-details.html">제품명</a></h4>
                                        <p><a href="#">카테고리</a></p>
                                        <div class="price_box"> 
                                            <span class="current_price">할인된 가격</span>
                                            <span class="old_price">원래 가격</span>
                                        </div>
                                    </figcaption>
                                </figure>
                            </article>
                            <article class="single_product">
                                <figure>
                                    <div class="product_thumb">
                                        <a class="primary_img" href="product-details.html"><img src="assets/img/product/product20.jpg" alt=""></a>
                                        <a class="secondary_img" href="product-details.html"><img src="assets/img/product/product21.jpg" alt=""></a>
                                        <div class="label_product">
                                            <span class="label_sale">할인</span>
                                            <!-- <span class="label_new">New</span> -->
                                        </div>
                                        <div class="action_links">
                                            <ul>
                                                <li class="add_to_cart"><a href="cart.html" title="Add to cart"><span class="lnr lnr-cart"></span></a></li>
                                                <li class="quick_button"><a href="#" data-toggle="modal" data-target="#modal_box"  title="quick view"> <span class="lnr lnr-magnifier"></span></a></li>
                                                <li class="wishlist"><a href="wishlist.html" title="Add to Wishlist"><span class="lnr lnr-heart"></span></a></li>  
                                                <!-- <li class="compare"><a href="#" title="Add to Compare"><span class="lnr lnr-sync"></span></a></li> -->
                                            </ul>
                                        </div>
                                    </div>
                                    <figcaption class="product_content">
                                        <h4 class="product_name"><a href="product-details.html">제품명</a></h4>
                                        <p><a href="#">카테고리</a></p>
                                        <div class="price_box"> 
                                            <span class="current_price">할인된 가격</span>
                                            <span class="old_price">원래 가격</span>
                                        </div>
                                    </figcaption>
                                </figure>
                            </article>
                            <article class="single_product">
                                <figure>
                                    <div class="product_thumb">
                                        <a class="primary_img" href="product-details.html"><img src="assets/img/product/product20.jpg" alt=""></a>
                                        <a class="secondary_img" href="product-details.html"><img src="assets/img/product/product21.jpg" alt=""></a>
                                        <div class="label_product">
                                            <span class="label_sale">할인</span>
                                            <!-- <span class="label_new">New</span> -->
                                        </div>
                                        <div class="action_links">
                                            <ul>
                                                <li class="add_to_cart"><a href="cart.html" title="Add to cart"><span class="lnr lnr-cart"></span></a></li>
                                                <li class="quick_button"><a href="#" data-toggle="modal" data-target="#modal_box"  title="quick view"> <span class="lnr lnr-magnifier"></span></a></li>
                                                <li class="wishlist"><a href="wishlist.html" title="Add to Wishlist"><span class="lnr lnr-heart"></span></a></li>  
                                                <!-- <li class="compare"><a href="#" title="Add to Compare"><span class="lnr lnr-sync"></span></a></li> -->
                                            </ul>
                                        </div>
                                    </div>
                                    <figcaption class="product_content">
                                        <h4 class="product_name"><a href="product-details.html">제품명</a></h4>
                                        <p><a href="#">카테고리</a></p>
                                        <div class="price_box"> 
                                            <span class="current_price">할인된 가격</span>
                                            <span class="old_price">원래 가격</span>
                                        </div>
                                    </figcaption>
                                </figure>
                            </article>
                            <article class="single_product">
                                <figure>
                                    <div class="product_thumb">
                                        <a class="primary_img" href="product-details.html"><img src="assets/img/product/product20.jpg" alt=""></a>
                                        <a class="secondary_img" href="product-details.html"><img src="assets/img/product/product21.jpg" alt=""></a>
                                        <div class="label_product">
                                            <span class="label_sale">할인</span>
                                            <!-- <span class="label_new">New</span> -->
                                        </div>
                                        <div class="action_links">
                                            <ul>
                                                <li class="add_to_cart"><a href="cart.html" title="Add to cart"><span class="lnr lnr-cart"></span></a></li>
                                                <li class="quick_button"><a href="#" data-toggle="modal" data-target="#modal_box"  title="quick view"> <span class="lnr lnr-magnifier"></span></a></li>
                                                <li class="wishlist"><a href="wishlist.html" title="Add to Wishlist"><span class="lnr lnr-heart"></span></a></li>  
                                                <!-- <li class="compare"><a href="#" title="Add to Compare"><span class="lnr lnr-sync"></span></a></li> -->
                                            </ul>
                                        </div>
                                    </div>
                                    <figcaption class="product_content">
                                        <h4 class="product_name"><a href="product-details.html">제품명</a></h4>
                                        <p><a href="#">카테고리</a></p>
                                        <div class="price_box"> 
                                            <span class="current_price">할인된 가격</span>
                                            <span class="old_price">원래 가격</span>
                                        </div>
                                    </figcaption>
                                </figure>
                            </article>
                        </div>
                    </div>
                </div>        
            </div>  
        </div> 
    </div>
    <!-- 클릭수많은 끝 -->
    <!-- 클릭수많은 끝 -->
    <!-- 클릭수많은 끝 -->
    <!--product area end-->
    
    <!--blog area start-->
    <!-- 최신리뷰 시작 -->
    <!-- 최신리뷰 시작 -->
    <!-- 최신리뷰 시작 -->
    <section class="blog_section">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section_title">
                       <p>국밥부장관</p>
                       <h2>최근 후기</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="blog_carousel blog_column3 owl-carousel">
                    <div class="col-lg-3">
                        <article class="single_blog">
                            <figure>
                                <div class="blog_thumb">
                                    <a href="blog-details.html"><img src="assets/img/blog/blog1.jpg" alt=""></a>
                                </div>
                                <figcaption class="blog_content">
                                   <div class="articles_date">
                                         <p>후기 쓴 날짜 <a href="#">이 자리 뭐야??</a> </p>
                                    </div>
                                    <h4 class="post_title"><a href="blog-details.html">후기 이름</a></h4>
                                    <footer class="blog_footer">
                                        <a href="blog-details.html">후기 내용</a>
                                    </footer>
                                </figcaption>
                            </figure>
                        </article>
                    </div>
                   
                </div>
            </div>
        </div>
    </section>
    <!-- 최신리뷰 끝 -->
    <!-- 최신리뷰 끝 -->
    <!-- 최신리뷰 끝 -->
    <!--blog area end-->
    
    <!--custom product area start-->
   
    <!--custom product area end-->
    
    <!--brand area start-->
     <!--brand area start-->
    
    <!--brand area end-->
    <!--brand area end-->

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
                                                <a href="#"><img src="assets/img/product/productbig1.jpg" alt=""></a>    
                                            </div>
                                        </div>
                                        <div class="tab-pane fade" id="tab2" role="tabpanel">
                                            <div class="modal_tab_img">
                                                <a href="#"><img src="assets/img/product/productbig2.jpg" alt=""></a>    
                                            </div>
                                        </div>
                                        <div class="tab-pane fade" id="tab3" role="tabpanel">
                                            <div class="modal_tab_img">
                                                <a href="#"><img src="assets/img/product/productbig3.jpg" alt=""></a>    
                                            </div>
                                        </div>
                                        <div class="tab-pane fade" id="tab4" role="tabpanel">
                                            <div class="modal_tab_img">
                                                <a href="#"><img src="assets/img/product/productbig4.jpg" alt=""></a>    
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal_tab_button">    
                                        <ul class="nav product_navactive owl-carousel" role="tablist">
                                            <li >
                                                <a class="nav-link active" data-toggle="tab" href="#tab1" role="tab" aria-controls="tab1" aria-selected="false"><img src="assets/img/product/product1.jpg" alt=""></a>
                                            </li>
                                            <li>
                                                 <a class="nav-link" data-toggle="tab" href="#tab2" role="tab" aria-controls="tab2" aria-selected="false"><img src="assets/img/product/product6.jpg" alt=""></a>
                                            </li>
                                            <li>
                                               <a class="nav-link button_three" data-toggle="tab" href="#tab3" role="tab" aria-controls="tab3" aria-selected="false"><img src="assets/img/product/product2.jpg" alt=""></a>
                                            </li>
                                            <li>
                                               <a class="nav-link" data-toggle="tab" href="#tab4" role="tab" aria-controls="tab4" aria-selected="false"><img src="assets/img/product/product7.jpg" alt=""></a>
                                            </li>

                                        </ul>
                                    </div>    
                                </div>  
                            </div> 
                            <div class="col-lg-7 col-md-7 col-sm-12">
                                <div class="modal_right">
                                    <div class="modal_title mb-10">
                                        <h2>Donec Ac Tempus</h2> 
                                    </div>
                                    <div class="modal_price mb-10">
                                        <span class="new_price">$64.99</span>    
                                        <span class="old_price" >$78.99</span>    
                                    </div>
                                    <div class="modal_description mb-15">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia iste laborum ad impedit pariatur esse optio tempora sint ullam autem deleniti nam in quos qui nemo ipsum numquam, reiciendis maiores quidem aperiam, rerum vel recusandae </p>    
                                    </div> 
                                    <div class="variants_selects">
                                        <div class="variants_size">
                                           <h2>size</h2>
                                           <select class="select_option">
                                               <option selected value="1">s</option>
                                               <option value="1">m</option>
                                               <option value="1">l</option>
                                               <option value="1">xl</option>
                                               <option value="1">xxl</option>
                                           </select>
                                        </div>
                                        <div class="variants_color">
                                           <h2>color</h2>
                                           <select class="select_option">
                                               <option selected value="1">purple</option>
                                               <option value="1">violet</option>
                                               <option value="1">black</option>
                                               <option value="1">pink</option>
                                               <option value="1">orange</option>
                                           </select>
                                        </div>
                                        <div class="modal_add_to_cart">
                                            <form action="#">
                                                <input min="1" max="100" step="2" value="1" type="number">
                                                <button type="submit">add to cart</button>
                                            </form>
                                        </div>   
                                    </div>
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
                                </div>    
                            </div>    
                        </div>     
                    </div>
                </div>    
            </div>
        </div>
    </div>
    <!-- modal area end-->
    
     <!--news letter popup start-->
    <!--news letter popup start-->
    

    
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


   <jsp:include page="common_footer.jsp"/>

</body>

</html>