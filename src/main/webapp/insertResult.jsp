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
	
	<h1>도서 추가 완료!!!</h1>
	<a href="/PhoneManager/Phones/list"> 목록 </a>

</body>
</html>