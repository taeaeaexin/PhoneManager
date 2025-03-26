<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List, dto.PhoneDto"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Mindow</title>
    <link rel="stylesheet" href="./css/style.css">
    <link rel="icon" href="./img/favicon.ico">
</head>

<body>

<!-- 아이콘 -->
<div class="desktop">
<!--  <div class="icon" onclick="location.href='about.html'">-->
  <div class="icon" onclick="location.href='/PhoneManager/Phones/list'">
    <img src="./img/phone.png">
    <p>재고 관리</p>
  </div>

  <div class="icon" onclick="#'">
    <img src="./img/people.png">
    <p>회원 관리</p>
  </div>

  <div class="icon" onclick="#">
    <img src="./img/computer.png">
    <p>거래처 관리</p>
  </div>
</div>

<!-- 작업 표시줄 -->
<div class="taskbar">
  <div class="start-button">
    <img src="./img/windows95.png" style = "width: 20px;">
    <p>시작</p>
  </div>

  <div class="time">
    <p>17:50</p>
  </div>
</div>

</body>
</html>