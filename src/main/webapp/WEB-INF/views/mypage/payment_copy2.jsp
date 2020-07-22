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
		height: 100%;
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
	<h3>MY 예매내역</h3>
	<table id="ticketing_box" class="table">
		<c:forEach items="${list }" var="list" varStatus="i">
			<tr>
				<td>이미지</td>
				<td>관람영화</td>
				<td>${list.filmname }</td>
				<td>예매금액</td>
				<td>12000원</td>
			</tr>
			<tr>
				<td>이미지</td>
				<td>관람극장</td>
				<td>${list.brname } ${list.theathername }</td>
				<td>할인금액</td>
				<td>${list.cuponrate }원</td>
			</tr>
			<tr>
				<td>이미지</td>
				<td>관람일시</td>
				<td>${list.mstarttime }</td>
				<td>결제금액</td>
				<td>${list.totalbill }</td>
			</tr>
			<tr>
				<td>이미지</td>
				<td>관람인원</td>
				<td>${list.usercount }</td>
				<td>결제방법</td>
				<td>${list.payment }</td>
			</tr>
			<tr>
				<td>이미지</td>
				<td>관람좌석</td>
				<td>${list.seatname }</td>
				<td>결제일시</td>
				<td>${list.chregdate }</td>
			</tr>
		</c:forEach>
	</table>
</div>
</body>
</html>








