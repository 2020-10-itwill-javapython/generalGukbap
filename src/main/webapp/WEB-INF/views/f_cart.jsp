<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

 <table>
                            <thead>
                                <tr>
                                    <th class="product_remove">삭제</th>
                                    <th class="product_thumb">이미지</th>
                                    <th class="product_name">제품</th>
                                    <th class="product-price">가격</th>
                                    <th class="product_quantity">수량</th>
                                    <th class="product_total">합계</th>
                                </tr>
                            </thead>
                          <c:forEach items="${orderDetailList}" var="orderDetail">  
                            <tbody>
                                <tr>
                                   <td class="product_remove"><a><button style="border: none; background: transparent;" name="cart_delete" value="${orderDetail.o_d_no}"><i class="fa fa-trash-o"></i></button></a></td>
                                    <td class="product_thumb"><a><img src="assets/img/product/${orderDetail.product.product_image}"></a></td>
                                    <td class="product_name"><a>${orderDetail.product.product_name}</a></td>
                                    <td class="product-price">${orderDetail.product.product_price}</td>
                                    <td class="product_quantity"><label>${orderDetail.o_d_product_count}</label></td>
                                    <td class="product_total">${orderDetail.product.product_price*orderDetail.o_d_product_count}</td>
                                </tr>
                            </tbody>
                            </c:forEach>
                        </table>
             
<script type="text/javascript" src="assets/js/custom/cart.js"></script>