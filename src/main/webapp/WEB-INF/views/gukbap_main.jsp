<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="common_header.jsp" />

<!--header area end-->

<!--slider area start-->
<div class="single_slider d-flex align-items-center"
	data-bgimg="assets/img/slider/cauldron.jpg">
	<div class="container">
		<div class="row">
			<div class="col-lg-6">
				<div class="slider_content"></div>
			</div>
		</div>
	</div>
</div>
<br>
<!--slider area end-->

<!--shipping area start-->

<!--shipping area end-->



<!--banner area start-->
<!--banner area end-->

<!--banner fullwidth area satrt-->
<!--banner fullwidth area end-->

<!--product banner area satrt-->
<!--product banner area end-->

<!--custom product area start-->
<!--custom product area end-->

<!--brand area start-->
<!--brand area start-->

<!--brand area end-->
<!--brand area end-->

<!--shipping area start-->

<!--shipping area end-->

<!--product area start -->
<!-- 대표메뉴 시작 -->
<!-- 대표메뉴 시작 -->
<!-- 대표메뉴 시작 -->
<div class="product_area  mb-64">
	<div class="container">
		<div class="row">
			<div class="col-12">
				<div class="product_header">
					<div class="section_title">
						<p>국밥부장관</p>
						<h2>대표메뉴</h2>
					</div>
				</div>
			</div>
		</div>
		<div class="product_container">
			<div class="row">
				<div class="col-12">
					<div class="tab-content">
						<div class="tab-pane fade show active" id="plant1" role="tabpanel">
							<div class="product_carousel product_column5 owl-carousel">
								<!-- product start -->
								<c:forEach items="${indexProductList}" var="product">
									<!-- product start -->
									<div class="product_items">
										<article class="single_product">
											<figure>
												<div class="product_thumb">
													<a class="primary_img" href=""><img
														src="assets/img/product/${product.product_image}" alt=""></a>
													<a class="secondary_img" href=""><img
														src="assets/img/product/${product.product_image}" alt=""></a>
													<div class="label_product"></div>
													<!-- product.product_isonsale이 true이면 할인 노출 -->
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
															
															<button style="border: none; background: transparent;" name="main_to_cart_button" value="${product.product_no}" >
                                                				<li class="add_to_cart"><a title="장바구니 담기"><span class="lnr lnr-cart"></span></a></li></button>	
																
															<li class="quick_button"><a href="" product_no="${product.product_no}" data-toggle="modal"
																data-target="#modal_box" title="quick view">
																<span class="lnr lnr-magnifier"></span></a></li>
														
															<button style="border: none; background: transparent;" name="main_to_wishlist_button" value="${product.product_no }">
																<li class="wishlist"><a title="찜 하기"><span class="lnr lnr-heart"></span></a></li></button> 
															
														</ul>
													</div>
												</div>
												<figcaption class="product_content">
													<h4 class="product_name">
														<a href="">${product.product_name}</a>
													</h4>
													<!-- product.product_isonsale이 true이면 current_price ${product.product_price*0.7}원 노출 -->
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
												</figcaption>
											</figure>
										</article>
									</div>
									<!-- product end -->
								</c:forEach>
								<!-- product end -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<br>
<!-- 대표메뉴 끝 -->
<!-- 대표메뉴 끝 -->
<!-- 대표메뉴 끝 -->
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
						<!-- product start -->
						<c:forEach items="${indexCountList}" var="product">
							<!-- product start -->
							<article class="single_product">
								<figure>
									<div class="product_thumb">
										<a class="primary_img" href=""><img
											src="assets/img/product/${product.product_image}" alt=""></a>
										<a class="secondary_img" href=""><img
											src="assets/img/product/${product.product_image}" alt=""></a>
										<div class="label_product"></div>
										<!-- product.product_isonsale이 true이면 할인 노출 -->
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

												<button style="border: none; background: transparent;"
													name="main_to_cart_button" value="${product.product_no}">
													<li class="add_to_cart"><a title="장바구니 담기"><span
															class="lnr lnr-cart"></span></a></li>
												</button>

												<li class="quick_button"><a href="#"
													product_no="${product.product_no}" data-toggle="modal"
													data-target="#modal_box" title="quick view"> <span
														class="lnr lnr-magnifier"></span></a></li>

												<button style="border: none; background: transparent;"
													name="main_to_wishlist_button"
													value="${product.product_no }">
													<li class="wishlist"><a title="찜 하기"><span
															class="lnr lnr-heart"></span></a></li>
												</button>

											</ul>
										</div>
									</div>
									<figcaption class="product_content">
										<h4 class="product_name">
											<a href="">${product.product_name}</a>
										</h4>
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
									</figcaption>
								</figure>
							</article>
							<!-- product end -->
						</c:forEach>
						<!-- product end -->
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
				<c:forEach items="${indexReviewList}" var="review">
					<!-- review start -->
					<div class="col-lg-3">

						<article class="single_blog">
							<figure>
								<div class="blog_thumb">
									<a href="blog_details?review_no=${review.review_no }"><img
										src="assets/img/review/${review.review_image}" alt=""></a>
								</div>
								<figcaption class="blog_content">
									<div class="articles_date">
										<p>${review.review_upload_date}</p>
									</div>
									<h4 class="post_title">
										<a href="blog_details?review_no=${review.review_no }">${review.review_title}</a>
									</h4>
									<footer class="blog_footer">
										<a href="blog_details?review_no=${review.review_no }">${review.review_content}</a>
									</footer>
								</figcaption>
							</figure>
						</article>
					</div>
					<!-- review end -->
				</c:forEach>
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
<div class="modal fade" id="modal_box" tabindex="-1" role="dialog"
	aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<button type="button" class="close" data-dismiss="modal"
				aria-label="Close">
				<span aria-hidden="true"><i class="icon-x"></i></span>
			</button>
			<div class="modal_body">
				<div class="container">
					<div class="row">
						<div class="col-lg-5 col-md-5 col-sm-12">
							<div class="modal_tab">
								<div class="tab-content product-details-large">
									<div class="tab-pane fade show active" id="tab1"
										role="tabpanel">
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
										<li><a class="nav-link active" data-toggle="tab"
											href="#tab1" role="tab" aria-controls="tab1"
											aria-selected="false"><img src="" alt=""></a></li>
										<li><a class="nav-link" data-toggle="tab" href="#tab2"
											role="tab" aria-controls="tab2" aria-selected="false"><img
												src="" alt=""></a></li>
										<li><a class="nav-link button_three" data-toggle="tab"
											href="#tab3" role="tab" aria-controls="tab3"
											aria-selected="false"><img src="" alt=""></a></li>
										<li><a class="nav-link" data-toggle="tab" href="#tab4"
											role="tab" aria-controls="tab4" aria-selected="false"><img
												src="" alt=""></a></li>

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
									<p id="modal_detail_desc">Lorem ipsum dolor sit amet,
										consectetur adipisicing elit. Mollitia iste laborum ad impedit
										pariatur esse optio tempora sint ullam autem deleniti nam in
										quos qui nemo ipsum numquam, reiciendis maiores quidem
										aperiam, rerum vel recusandae</p>
								</div>
								<div class="variants_selects">
									<div class="variants_size">
										<h2>size</h2>
										<select class="select_option">
											<option selected value="1">기본</option>
											<option value="1">특</option>

										</select>
									</div>

									<div class="modal_add_to_cart">
										<form action="#">
											<input min="1" max="100" step="1" value="1" type="number">
											<button type="submit">장바구니 추가</button>
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
<script type="text/javascript"
	src="assets/js/custom/gukbap_main_custom.js"></script>


<jsp:include page="common_footer.jsp" />

</body>

</html>