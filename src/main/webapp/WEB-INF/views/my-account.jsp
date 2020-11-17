<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<jsp:include page="common_header.jsp"/>
<link rel="stylesheet" href="assets/css/custom_css/my_account_custom.css">
<body>
    <!--breadcrumbs area start-->
  <!--  <div class="breadcrumbs_area">
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
    -->  
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
                                <li><a href="#dashboard" id="default_tab" data-toggle="tab" class="nav-link active">대시보드</a></li>
                                <li> <a href="#orders" id="orders_tab" user_id="${loginUser.user_id }" data-toggle="tab" class="nav-link">주문 확인</a></li>
                                <li><a href="#address" id="user_address_tab" user_id="${loginUser.user_id }" data-toggle="tab" class="nav-link">주소지 관리</a></li>
                                <li><a href="#account-details" id="user_info_tab" user_id="${loginUser.user_id }" data-toggle="tab" class="nav-link">계정정보</a></li>
                                <li><a href="logout_action" class="nav-link">로그아웃</a></li>
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
                                                <th>구매 확정</th>
                                                 	 	 	
                                            </tr>
                                        </thead>
                                        <tbody>
                                        	<c:forEach items="${orders}" var="order">
                                        		<c:choose>
                                        			<c:when test="${order.order_desc == null }">
                                        			</c:when>
                                        			<c:otherwise>
			                                            <tr>
			                                                <td>${order.order_no }</td>
			                                                <td>${order.order_date.substring(0, 11) }</td>
			                                                <td><span class="success">${order.order_status }</span></td>
			                                                <td>${order.order_total_price}원</td>
			                                                <td><a href="cart?order_no=${order.order_no }" class="view">view</a></td>
			                                               	<c:choose>
				                                               	<c:when test="${order.order_status == 'complete'}">
				                                               		<td>구매 확정됨</td>
				                                               	</c:when>
				                                               	<c:otherwise>
					                                                <c:choose>
					                                                	<c:when test="${order.order_status == 'shipped'}">
					                                                		<td><a href="confirm_purchase?order_no=${order.order_no }">구매 확정</a></td>
					                                                	</c:when>
					                                                	<c:otherwise>
					                                                		<td>구매 대기중</td>
					                                                	</c:otherwise>
					                                                </c:choose>
				                                               	</c:otherwise>
			                                                </c:choose>
				                                                
			                                            </tr>
                                        			</c:otherwise>
                                        		</c:choose>
                                        	</c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="tab-pane" id="address">
                                <h4 class="billing-address">배송지 정보</h4>
                                <button id="add_new_address_btn" class="btn btn-danger" type="submit">주소지 추가</button>
                                <br/>
                                <div class="row">
                                <c:forEach var="address" items="${addresses }">
                                <div class="col-md-6">
                                <form id="address_update_form_${address.address_no }", method="POST" action="update_address_info">
	                                <address>
	                                	<input type="hidden" value="${address.address_no }"  name="address_no">
	                                	<label>회사 이름</label><br/>
	                                	<input type="text" value="${address.address_company_name.trim() }" name="address_company_name"><br/>
	                                	<label>주소</label><br/>
	                                	<input type="text" value=" ${address.address_street.trim() }" name="address_street"><br/>
	                                	<label>주소지 추가 정보</label><br/>
	                                	<input type="text" value=" ${address.address_street_optional.trim() }" name="address_street_optional"><br/>
	                                	<label>도시</label><br/>
	                                	<input type="text" value="${address.address_city.trim() } " name="address_city"><br/>
	                                	<label>국가</label><br/>
	                                	<input type="text" value="${address.address_state.trim() }" readonly name="address_state"><br/>
		                                <br/> 
                                        <button class="address_update_btn" class="btn btn-danger" type="submit">수정</button>
                                        <button class="address_delete_btn" class="btn btn-danger" type="button">삭제</button>
                                        <br/>
	                                </address>
                                </form>
                                </div>
                                </c:forEach>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="account-details">
                                <h3>계정 정보</h3>
                                <div class="login">
                                    <div class="login_form_container">
                                        <div class="account_login_form">
                                            <form id="user_update_form" method="POST" action="">
                                                <label>이름</label>
                                                <input type="text" value="${loginUser.user_first_name }" name="user_first_name">
                                                <br/>
                                                <label>성</label>
                                                <input type="text" value="${loginUser.user_last_name }" name="user_last_name">
                                                <br/>
                                                <label>이메일(아이디)</label>
                                                <input type="text" id="user_id_input" value="${loginUser.user_id }" name="user_id" readonly>
                                                <br/>
                                                <label>비밀번호</label>
                                                <input type="password" value="${loginUser.user_password }" name="user_password">
                                                <br/>
                                                <label>비밀번호 확인</label>
                                                <input type="password" id="user_password_check" name="user_password_check">
                                                <br/>
                                                <label>생일</label>
                                                <input type="text" 
                                                placeholder="YYYY/MM/DD" 
                                                value="${loginUser.user_birthdate.replaceAll('-', '/').substring(0,11)}" name="user_birthdate">
                                                <span class="example">
                                                  (E.g.: 1970/05/31)
                                                </span>
                                                <br/>
                                                <label>전화번호</label>
                                                <input type="text" placeholder="'-'는 생략" value="${loginUser.user_phone }" name="user_phone">
                                            `    <br>
                                                <span class="custom_checkbox">
                                                    <input type="checkbox" value="1" name="optin">
                                                    <label>뉴스레터 수신 동의</label>
                                                </span>
                                                <br>
                                                <div id="save_button" class="btn btn-danger">
                                                   <button type="submit">Save</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
							<div id="user_info_update_notice_modal" class="modal fade" tabindex="-1" role="dialog">
								<div class="modal-dialog" role="document">
									<div class="modal-content">
										<div class="modal-header">
											<h5 class="modal-title">수정 완료</h5>
										</div>
										<div class="modal-body">
											<p>유저 정보가 성공적으로 수정됬습니다.</p>
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-primary" data-dismiss="modal">확인</button>
										</div>
									</div>
								</div>
							</div>
							<div id="address_info_update_notice_modal" class="modal fade" tabindex="-1" role="dialog">
								<div class="modal-dialog" role="document">
									<div class="modal-content">
										<div class="modal-header">
											<h5 class="modal-title">수정 완료</h5>
										</div>
										<div class="modal-body">
											<p>주소지 정보가 성공적으로 수정됬습니다.</p>
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-primary" data-dismiss="modal">확인</button>
										</div>
									</div>
								</div>
							</div>
							<div id="add_new_address_modal" class="modal fade" tabindex="-1" role="dialog">
								<div class="modal-dialog" role="document">
									<div class="modal-content">
										<div class="modal-header">
											<h5 class="modal-title">주소지 추가</h5>
										</div>
										<div class="modal-body">
											<form id="address_create_form", method="POST" action="">
				                                	<label>회사 이름</label><br/>
				                                	<input type="text" value="" name="address_company_name"><br/>
				                                	<label>주소</label><br/>
				                                	<input type="text" value="" name="address_street"><br/>
				                                	<label>주소지 추가 정보</label><br/>
				                                	<input type="text" value="" name="address_street_optional"><br/>
				                                	<label>도시</label><br/>
				                                	<input type="text" value="" name="address_city"><br/>
				                                	<label>국가</label><br/>
				                                	<input type="text" value="대한민국" readonly name="address_state"><br/>
					                                <br/> 
													<button type="submit" class="btn btn-primary">추가</button>
			                                </form>
										</div>
									</div>
								</div>
							</div>
							<div id="add_new_address_confirm" class="modal fade" tabindex="-1" role="dialog">
								<div class="modal-dialog" role="document">
									<div class="modal-content">
										<div class="modal-body">
											<p>새로운 주소지를 추가하시겠습니까?</p>
										</div>
										<div class="modal-footer">
											<button id="btn1" type="button" class="btn btn-primary" >예</button>
											<button id="btn2" type="button" class="btn btn-primary" data-dismiss="modal">아니요</button>
										</div>
									</div>
								</div>
							</div>
							<div id="add_new_address_success_notice" class="modal fade" tabindex="-1" role="dialog">
								<div class="modal-dialog" role="document">
									<div class="modal-content">
										<div class="modal-body">
											<p>새로운 주소지가 추가되었습니다.</p>
										</div>
										<div class="modal-footer">
											<button id="add_new_address_success_notice_btn" type="button" class="btn btn-primary" data-dismiss="modal">확인</button>
										</div>
									</div>
								</div>
							</div>
							<div id="delete_address_confirm" class="modal fade" tabindex="-1" role="dialog">
								<div class="modal-dialog" role="document">
									<div class="modal-content">
										<div class="modal-body">
											<p>주소지를 삭제하시겠습니까?</p>
										</div>
										<div class="modal-footer">
											<button id="delete_address_btn1" type="button" 
											data-toggle='modal' data-target='#delete_address_confirm_notice' class="btn btn-primary" >예</button>
											<button id="delete_address_btn2" type="button" class="btn btn-primary" data-dismiss="modal">아니요</button>
										</div>
									</div>
								</div>
							</div>
							<div id="delete_address_confirm_notice" class="modal fade" tabindex="-1" role="dialog">
								<div class="modal-dialog" role="document">
									<div class="modal-content">
										<div class="modal-body">
											<p>주소지가 삭제 되었습니다</p>
										</div>
										<div class="modal-footer">
											<button id="delete_address_confirm_notice_btn" type="button" class="btn btn-primary" data-dismiss="modal">확인</button>
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
<script src="assets/js/jquery.validate.js"></script>
<script src="assets/js/additional-methods.js"></script>
<script src="assets/js/main.js"></script>
<script src="assets/js/custom/my_account_custom.js"></script>




</body>

</html>