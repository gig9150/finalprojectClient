<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<style>
	#inquiry_wrap{
		border: 1px solid gray;
		width: 50%;
		height: 100%;
		margin: auto;
	}
	#ticketing_box{
		width: 100%;
	}
	
</style>
<link rel="stylesheet" href="${cp }/resources/css/mypage/mypage_top_menu.css" type="text/css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="inquiry_wrap">
	<div id="mypage_top_menu">
		<ul>
			<li><a href="${cp }/mypage/payment.do"><span>결제내역</span></a></li>
			<li><a href="${cp }/mypage/cupon.do"><span>쿠폰함</span></a></li>
			<li><a href="${cp }/mypage/moviesaw.do"><span>내가 본 영화</span></a></li>
			<li><a href="${cp }/mypage/inquiry.do"><span>1:1문의</span></a></li>
			<li><a href="${cp }/mypage/memberInfo.do"><span>회원정보관리</span></a></li>
		</ul>
	</div>
	<h3>나의 예매내역</h3>
	<table id="ticketing_box" border="1">
	  <tbody>
		<c:forEach items="${list }" var="list" varStatus="i">
			<tr>
				<th rowspan="5"><img src="${cp }/resources/images/images/00${i.index+1 }.jpg" /><th>
			</tr>
			<tr>
				<th colspan="4">${list.filmname }</th>
			</tr>
			<tr>
				<th>관람 일시</th>
				<td>${list.mstarttime }</td>
				<th>상영관</th>
				<td>${list.theathername }</td>
			</tr>
			<tr>
				<th>관람 극장</th>
				<td>${list.brname }</td>
				<th>관람좌석</th>
				<td>${list.seatname } </td>
			</tr>
			<tr>
				<th>결제 날짜</th>
				<td>${list.chregdate }</td>
				<th>매수</th>
				<td>일반 ${list.usercount }</td>
			</tr>
			<tr>
				<th>결제 수단</th>
				<td colspan="3">${list.payment }</td>
			</tr>
		</c:forEach>
	  <tbody>
	</table>	
</div>
</body>
</html>








