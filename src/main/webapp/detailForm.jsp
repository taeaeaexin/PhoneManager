<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List, dto.PhoneDto"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<%
	PhoneDto phoneDto = (PhoneDto) request.getAttribute("phoneDto");
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <link rel="stylesheet" href="../css/style.css">
    <script src="${path}/resources/js/product/product_detail.js"></script>
</head>
<body>
	
	<h1>휴대폰 등록</h1>
	<form action="/PhoneManager/Phones/insert" method="post">
		<input type="text" name="phoneId" value="<%= phoneDto.getPhoneId() %>"></input><br>
		<input type="text" name="phoneName" value="<%= phoneDto.getPhoneName() %>"></input><br>
		<input type="text" name="publisher" value="<%= phoneDto.getPublisher() %>"></input><br>
		<input type="text" name="price" value="<%= phoneDto.getPrice() %>"></input><br>
		<button type="submit">등록</button>
	</form>
	<a href="/PhoneManager/Phones/list">목록</a> <a href="/PhoneManager/Phones/delete?phoneId=<%= phoneDto.getPhoneId() %>"> 삭제 </a>

</body>
</html>