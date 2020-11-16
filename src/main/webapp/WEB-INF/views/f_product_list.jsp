<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
													<span class="current_price">${product.product_price}원</span>
													<span class="old_price">8500원</span>
												</div>
											</c:when>
											<c:otherwise>
												<div class="price_box">
													<span class="current_price">${product.product_price}원</span>
												</div>
											</c:otherwise>
										</c:choose>
									</div>
                                <div class="product_content list_content">
                                    <h4 class="product_name"><a href="product-details?product_no=${product.product_no}">${product.product_name}</a></h4>
										<c:choose>
											<c:when test="${product.product_isOnSale}">
												<div class="price_box">
													<span class="current_price">${product.product_price}원</span>
													<span class="old_price">8500원</span>
												</div>
											</c:when>
											<c:otherwise>
												<div class="price_box">
													<span class="current_price">${product.product_price}원</span>
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

<script type="text/javascript" src="assets/js/custom/f_produt_list.js"></script>