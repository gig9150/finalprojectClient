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
		border: 1px solid green;
		width: 100%;
		height: 1000px;
	}
	#ticketing_info{
		border: 1px solid orange;
		width: 100%;
	}
	#ticketing_bx{
		width: 100%;
		height: 300px;
	}
	#ticketing_poster{
		width: 22%;
		height: 100%;
		border: 1px solid red;
		padding: 10px;
		float: left;
	}
	#ticketing_info img{
		border: 1px solid;
		width: 100%;
		height: 100%;
	}
	#ticketing_contents{
		border: 1px solid blue;
		float: left;
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
	<h3>나의 예매내역</h3>
	<div id="ticketing_box">
		<c:forEach items="${list }" var="list" varStatus="i">
			<div id="ticketing_bx">
				<div id="ticketing_poster">
					<img src="${cp }/resources/images/images/00${i.index+1 }.jpg" />
				</div>
				<div id="ticketing_contents">
					ㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇ
				</div>
			</div>
		</c:forEach>
	</div>	
</div>
</body>
</html>








