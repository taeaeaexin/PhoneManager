<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List, dto.PhoneDto"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<%
	List<PhoneDto> phoneList = (List<PhoneDto>) request.getAttribute("phoneList");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>휴대폰 목록</title>
    <link rel="stylesheet" href="../css/style.css">
    <script src="${path}/resources/js/product/product_detail.js"></script>
</head>
<body>
	<h1>휴대폰 목록</h1>
	<table>
		<thead>
		    <tr><th>ID</th><th>휴대폰 이름</th><th>제조사</th><th>가격</th></tr>
		</thead>
		<tbody>
<%
	for(PhoneDto phoneDto:phoneList){
%>
			<tr>
			<td><a href="/PhoneManager/Phones/detail?phoneId=<%= phoneDto.getPhoneId() %>"><%= phoneDto.getPhoneId() %></a></td>
			<td><%= phoneDto.getPhoneName() %></td>
			<td><%= phoneDto.getPublisher() %></td>
			<td><%= phoneDto.getPrice() %></td>
			</tr>
<%
	}
%>
		</tbody>
	</table>
	<hr>
	<a href="/PhoneManager/insertForm.jsp">등록</a> <a href="/PhoneManager">Home</a>
</body>
</html>
