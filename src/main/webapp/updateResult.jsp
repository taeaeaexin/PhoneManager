<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List, dto.PhoneDto"%>
<%
	PhoneDto PhoneDto = (PhoneDto) request.getAttribute("PhoneDto");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>도서 상세 및 수정</h1>
	<form action="/PhoneManager/Phones/update" method="post">
		<input type="text" name="PhoneId" value="<%= PhoneDto.getPhoneId() %>"></input><br>
		<input type="text" name="PhoneName" value="<%= PhoneDto.getPhoneName() %>"></input><br>
		<input type="text" name="publisher" value="<%= PhoneDto.getPublisher() %>"></input><br>
		<input type="text" name="price" value="<%= PhoneDto.getPrice() %>"></input><br>
		<button type="submit">수정</button>
	</form>
	<hr>
	<a href="/PhoneManager/Phones/list"> 목록 </a>

</body>
</html>