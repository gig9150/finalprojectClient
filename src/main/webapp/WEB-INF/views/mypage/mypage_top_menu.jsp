<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
	#mypage_wrap{
		border: 1px solid red;
		width: 50%;
		height: 100%;
		margin: auto;
	}
	#mypage_top_menu ul li{
		display: inline-block;
	}
	#mypage_top_menu ul li a{
		display: inline-block;
		width: 140px;
		height: 50px;
		text-align: center;
		text-decoration: none;
	}
	#mypage_top_menu ul li a span{
		font-size: 18px;
		line-height: 50px;
	}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="mypage_top_menu">
	<ul>
		<li><a href="${cp }/mypage/payment.do"><span>결제내역</span></a></li>
		<li><a href="#"><span>쿠폰함</span></a></li>
		<li><a href="#"><span>내가 본 영화</span></a></li>
		<li><a href="${cp }/mypage/inquiry.do"><span>1:1문의</span></a></li>
		<li><a href="#"><span>MY 정보 관리</span></a></li>
	</ul>
</div>
</body>
</html>