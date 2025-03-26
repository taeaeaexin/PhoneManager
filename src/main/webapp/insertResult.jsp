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
<div class="window" style="width:500px">
    <div class="title-bar">
        <span>알림</span>
        <button onclick="location.href='/PhoneManager'">✖</button>
    </div>

    <div class="content-container">

        <div style="display: flex; flex-direction: column; align-items: center;">
            <h3>재고 추가가 완료되었습니다</h3>
            <br style="width: 100%;">
            <button onclick="location.href='/PhoneManager/Phones/list'" style="width: 77px; height: 33px;">확인</button>
        </div>

    </div>

</div>

</body>
</html>