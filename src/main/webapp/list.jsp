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
    <title>Mindow</title>
    <link rel="stylesheet" href="../css/style.css">
</head>

<body>

<!-- 아이콘 -->
<div class="desktop">
<!--  <div class="icon" onclick="location.href='about.html'">-->
  <div class="icon" onclick="location.href='/PhoneManager/Phones/list'">
    <img src="../img/phone.png">
    <p>재고 관리</p>
  </div>

  <div class="icon" onclick="#'">
    <img src="../img/people.png">
    <p>회원 관리</p>
  </div>

  <div class="icon" onclick="#">
    <img src="../img/computer.png">
    <p>거래처 관리</p>
  </div>
</div>

<!-- 작업 표시줄 -->
<div class="taskbar">
  <div class="start-button">
    <img src="../img/windows95.png" style = "width: 20px;">
    <p>시작</p>
  </div>

  <div class="time">
    <p>17:50</p>
  </div>
</div>

<!-- 창 -->
<div class="window">
    <div class="title-bar">
        <span>재고 관리</span>
        <button onclick="location.href='/PhoneManager'">✖</button>
    </div>

    <div class="content-container">
        <div class="content">

        	<table>
        		<thead>
        		    <tr><th>ID</th><th>기종</th><th>제조사</th><th>가격</th></tr>
        		</thead>
        		<tbody>
                <%
                    for(PhoneDto phoneDto:phoneList){
                %>
        			<tr>
        			<td><a href="/PhoneManager/Phones/detail?phoneId=<%= phoneDto.getPhoneId() %>"><%= phoneDto.getPhoneId() %></a></td>
        			<td><a href="/PhoneManager/Phones/detail?phoneId=<%= phoneDto.getPhoneId() %>"><%= phoneDto.getPhoneName() %></td>
        			<td><a href="/PhoneManager/Phones/detail?phoneId=<%= phoneDto.getPhoneId() %>"><%= phoneDto.getPublisher() %></td>
        			<td><a href="/PhoneManager/Phones/detail?phoneId=<%= phoneDto.getPhoneId() %>"><%= phoneDto.getPrice() %>원</td>
        			</tr>
                <%
                    }
                %>
        		</tbody>
        	</table>

        </div>
    </div>
    <button onclick="location.href='/PhoneManager/insertForm.jsp'" style="width: 77px; height: 33px;">등록</button>

</div>

</body>
</html>
