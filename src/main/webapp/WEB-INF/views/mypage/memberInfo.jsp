<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
	#inquiry_wrap{
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
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="inquiry_wrap">
	<%@include file="mypageInfo.jsp" %>
	<%@include file="mypage_top_menu.jsp" %>
	<div id="mypage_menu_box">
		<ul>
			<li>
				<a href="${cp }/log/memuser.do">
					<span><img src="${cp }/resources/images/mypage/user.png" alt=""></span>
					<span>회원 정보 변경</span>
				</a>
			</li>
			<li>
				<a href="${cp }/log/mempwd.do">
					<span><img src="${cp }/resources/images/mypage/pwd.png" alt=""></span>
					<span>비밀번호 변경</span>
				</a>
			</li>
			<li>
				<a href="${cp }/log/memsecession.do">
					<span><img src="${cp }/resources/images/mypage/secession.png" alt=""></span>
					<span>회원탈퇴</span>
				</a>
			</li>
		</ul>
	</div>
</div>
</body>
</html>