<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
</script>
</head>
<body>
            <h1>helprun@naver.com 주문</h1>
			<c:forEach items="${orderList}" var="order">			
				   <li>${order} </li>
				   <hr> </hr>
			</c:forEach>
</body>
</html>