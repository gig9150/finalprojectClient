<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	#mypage_menu_box ul li{
		list-style: none;
		display: inline-block;
		background-color: #F8F8F8;
	}
	#mypage_menu_box li a{
		line-height: 70px;
		display: inline-block;
		text-decoration: none;
		text-align: center;
		width: 200px;
		height: 80px;
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
			<li><a href="#"><span>쿠폰함</span></a></li>
			<li><a href="#"><span>내가 본 영화</span></a></li>
			<li><a href="${cp }/mypage/inquiry.do"><span>1:1문의</span></a></li>
			<li><a href="${cp }/mypage/memberInfo.do"><span>회원정보관리</span></a></li>
		</ul>
	</div>
	<div id="mypage_menu_box">
		<ul>
			<li>
				<a href="#">
					<span><img src="${cp }/resources/images/user.png" alt=""></span>
					<span>회원 정보 변경</span>
				</a>
			</li>
			<li>
				<a href="#">
					<span><img src="${cp }/resources/images/pwd.png" alt=""></span>
					<span>비밀번호 변경</span>
				</a>
			</li>
			<li>
				<a href="#">
					<span><img src="${cp }/resources/images/profile.png" alt=""></span>
					<span>프로필 변경</span>
				</a>
			</li>
			<li>
				<a href="#">
					<span><img src="${cp }/resources/images/secession.png" alt=""></span>
					<span>회원탈퇴</span>
				</a>
			</li>
		</ul>
	</div>
</div>
</body>
</html>