<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="common_header.jsp" />
<link rel="stylesheet"
	href="assets/css/custom_css/write_review_page_custom.css">
<body>
	<!--breadcrumbs area start-->
<!--  	<div class="breadcrumbs_area">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="breadcrumb_content">
						<h3>리뷰 작성</h3>
						<ul>
							<li><a href="gukbap_main">메인</a></li>
							<li>리뷰 작성</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	-->
	<!--breadcrumbs area end-->

	<!-- my account start  -->
	<section class="main_content_area">
		<div class="container">
			<div class="account_dashboard">
				<div class="row">
					<div class="offset -md-3 col-md-6 offset-md-3">
						<!-- Tab panes -->
						<div class="tab-content dashboard_content">
							<div class="tab-pane show active" id="account-details">
								<h3>리뷰 작성</h3>
								<div class="login">
									<div class="login_form_container">
										<div class="write_review_form">
											<form id="write_review_form" method="POST"
											enctype="multipart/form-data">
												<label>리뷰 제목<span class="isMandatory">* </span></label> 
												<input type="text" name="review_title"> 
												<br /> 
												<label>리뷰 내용<span class="isMandatory">* </span>
												</label> 
												<textarea type="text" id="review_content" 
												name="review_content" rows=10></textarea> 
												<br /> 
												<input type="hidden" name="product_no" value="${orderDetail.product.product_no }"> 
												<input type="hidden" name="o_d_no" value="${orderDetail.o_d_no }">
												<div class="input-group mb-3">
													<div class="custom-file">
														<input type="file" class="custom-file-input"
															id="inputGroupFile02" name="image_file" 
															accept="image/png, image/jpeg">
													</div>
												</div>
												<div id="submit_button" class="btn btn-danger">
													<button type="submit">리뷰 작성</button>
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
	<jsp:include page="common_footer.jsp" />
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
	<script src="assets/js/custom/write_review_page_custom.js"></script>



</body>

</html>