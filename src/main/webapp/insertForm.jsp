<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List, dto.PhoneDto"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <link rel="stylesheet" href="../css/style.css">
    <script src="${path}/resources/js/product/product_detail.js"></script>
</head>
<body>

    <h1>도서 등록</h1>
    <form action="/PhoneManager/Phones/insert" method="post">
        <input type="text" name="phoneId"/><br>
        <input type="text" name="phoneName"/><br>
        <input type="text" name="publisher"/><br>
        <input type="text" name="price"/><br>
        <button type="submit">등록</button>
    </form>
    <hr>
    <a href="/PhoneManager/Phones/list"> 목록 </a>
</body>
</html>