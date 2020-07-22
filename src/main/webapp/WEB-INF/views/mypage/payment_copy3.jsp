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
	#ticketing_info{
		border: 1px solid gray;
		width: 100%;
		height: 250px;
	}
	#ticketing_poster{
		width: 19%;
		height: 100%;
		float: left;
		padding: 10px;
	}
	#ticketing_poster img{
		border-radius: 5px;
		widows: 100%;
		height: 100%;
	}
	#ticketing_detail_box{
		display: inline-block;
		width: 81%;
		height: 100%;
		float: left;
	}
	#ticketing_detail{
		padding: 10px;
		height: 100%;
	}
	#ticketing_tit{
		width: 100%;
		font-size: 22px;
	}
	.ticketing_contents{
		border-top: 2px solid #a79696;
	}
	.ticketing_contents label{
		width: 90px;
	}
	.ticketing_contents div{
		display: inline-block;
		width: 350px;
	}
	#ticketing_payment div h4{
		color: #5179d2;
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
	<div id="ticketing_box">
		<c:forEach items="${list }" var="list" varStatus="i">
		<div id="ticketing_info">
			<div id="ticketing_poster">
				<img src="${cp }/resources/images/images/00${i.index+1 }.jpg" />
			</div>
			<div id="ticketing_detail_box">
				<div id="ticketing_detail">
					<div id="ticketing_tit">
						<strong>${list.filmname }</strong>
					</div>
					<div class="ticketing_contents">
						<div>
							<label>관람 일시</label>
							<span class="ticketing_span">${list.mstarttime }</span>
						</div>
						<div>
							<label>상영관</label>
							<span class="ticketing_span">${list.theathername }</span><br>
						</div>
						<div>
							<label>관람 극장</label>
							<span class="ticketing_span">${list.brname }</span>
						</div>
						<div>
							<label>관람 좌석</label>
							<span class="ticketing_span">${list.seatname }</span>
						</div>
					</div>
					<div class="ticketing_contents">
						<div>
							<label>결제 날짜</label>
							<span class="ticketing_span2">${list.chregdate }</span>
						</div>
						<div>
							<label>매수</label>
							<span class="ticketing_span2">일반 ${list.usercount }</span><br>
						</div>
						<div>
							<label>결제 수단</label>
							<span class="ticketing_span2">${list.payment }</span>
						</div>
					</div>
					<div id="ticketing_payment">
						<div>
							<h4>총 결제 금액</h4>
							12000원 - ${list.cuponrate }원
						</div>
					</div>
				</div>
			</div>
		</div>
		</c:forEach>
	</div>
</div>
</body>
</html>








