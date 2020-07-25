<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style>
#inquiry_wrap {	width: 50%;	height: 100%;	margin: auto;}
#ticketing_box {	width: 100%;	height: 100%;	margin-bottom: 50px;}
#ticketing_info {	border: 1px solid gray;	width: 90%;	height: 220px; margin: 10px;}
#ticketing_poster {	width: 20%;	height: 100%;	float: left;	padding: 10px;}
#ticketing_poster img {	border-radius: 5px;	width: 150px;	height: 100%;}
#ticketing_detail_box {	width: 40%;	height: 100%;	float: left;}
#ticketing_payment_box {	width: 40%;	height: 100%;	float: left;	text-align: center;}
#payment_box {	width: 250px;	height: 150px;	border: 1px solid;	padding: 20px;	margin: 40px;	background-color: #ffffea}
#payment_box_price {	border-bottom: 1px solid gray;}
#payment_box_total span {	color: #737ce2;	font-size: 20px;}
#ticketing_brname {	font-size: 25px;}
#ticketing_tit {	margin-left: 10px;	margin-top: 10px;	margin-bottom: 10px;}
#ticketing_box h3 {	margin-left: 20px;}
.ticketing_contents {	margin-left: 10px;}
.ticketing_contents label {	width: 80px;}
#inquiry_div{ padding: 80px 0px; width: 100%;	text-align: center;	}
	#inquiry_div p{	font-size: 24px; }
</style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="inquiry_wrap">
	<%@include file="mypageInfo.jsp" %>
	<%@include file="mypage_top_menu.jsp" %>
		<div id="ticketing_box">
			<h3>MY 예매내역</h3>
			<c:if test="${empty list}">
				<tr>
					<td colspan="4">
						<div id="inquiry_div">
							<img src="${cp }/resources/images/mypage/inquiry.png"/>
							<p>예매 내역이 존재하지 않습니다.</p>
						</div>
					</td>
				</tr>
			</c:if>
			<c:forEach items="${list }" var="list" varStatus="i">
				<div id="ticketing_info">
					<div id="ticketing_poster">
						<img src="${list.movieimgurl }" />
					</div>
					<div id="ticketing_detail_box">
						<div id="ticketing_detail">
							<div id="ticketing_tit">
								<span id="ticketing_brname">${list.filmname }</span>
							</div>
							<div class="ticketing_contents">
								<div>
									<label>관람 극장</label> <span class="ticketing_span">${list.brname }</span>
								</div>
								<div>
									<label>관람 일시</label> <span class="ticketing_span">${list.mstarttime }</span>
								</div>
								<div>
									<label>상영관</label> <span class="ticketing_span">${list.theathername }</span><br>
								</div>
								<div>
									<label>관람인원</label> <span class="ticketing_span">${list.usercount }</span><br>
								</div>
								<div>
									<label>관람 좌석</label> <span class="ticketing_span">${list.seatname }</span>
								</div>
								<div>
									<label>매수</label> <span class="ticketing_span">${list.usercount }매</span><br>
								</div>
							</div>
						</div>
					</div>

					<div id="ticketing_payment_box">
						<div id="payment_box">
							<div>
								<label>결제날짜</label> <span class="ticketing_span">${list.chregdate }</span><br>
							</div>
							<div id="payment_box_price">
								<c:set var="price" value="12000" />
								<label>${list.payment}</label> <span class="ticketing_span">${(price*list.usercount)-list.cuponrate }원</span><br>
								<label>쿠폰할인</label> <span class="ticketing_span">${list.cuponrate }원</span><br>
							</div>
							<div id="payment_box_total">
								<label>총 결제금액</label> <span class="ticketing_span">${list.totalbill }원</span><br>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
</body>
</html>








