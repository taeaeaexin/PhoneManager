<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List, dto.PhoneDto"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>Mindow</title>
    <link rel="stylesheet" href="../css/style.css">
    <script src="${path}/resources/js/product/product_detail.js"></script>
</head>
<body>

	<h1>도서 관리 시스템</h1>
	<a href="/PhoneManager/Phones/list">도서 관리</a><br>
	<a href="#">회원 관리</a><br>
	<a href="#">거래처 관리</a><br>

</body>
</html>