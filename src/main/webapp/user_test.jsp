<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"/>
<script type="text/javascript">
</script>
</head>
<body>
	<div>
		<ul id="userList">
			<li>Id:&nbsp;${user.user_id}</li>
			<li>password:&nbsp;${user.user_password}</li>
			<li>first_name:&nbsp;${user.user_first_name}</li>
			<li>last_name:&nbsp;${user.user_last_name}</li>
			<li>birth_date:&nbsp;${user.user_birthdate}</li>
			<li>phone:&nbsp;${user.user_phone}</li>
			<li>level:&nbsp;${user.user_level}</li>
			<br/>
			<c:forEach items="${user.addresses }" var="address">			
				<li>${address.address_no}</li>
				<li>${address.address_company_name}</li>
				<li>${address.address_street}</li>
				<li>${address.address_street_optional}</li>
				<li>${address.address_city}</li>
				<li>${address.address_state}</li>
			</c:forEach>
			<br/>
			<c:forEach items="${user.orders}" var="order">
				<li>${order.order_no }</li>
				<li>${order.order_date }</li>
				<li>${order.order_status }</li>
				<li>${order.order_total_pricce }</li>
				<li>${order.order_desc }</li>
				<li>${order.order_note }</li>
				<li>${order.user_id }</li>
				<br/>
			</c:forEach>		
		</ul>
	</div>
</body>
</html>