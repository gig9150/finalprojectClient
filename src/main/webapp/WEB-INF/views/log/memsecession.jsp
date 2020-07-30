<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
#inquiry_wrap {
	border: 1px solid gray;
	width: 100%;
	height: 100%;
	margin: auto;
}

#mypage_menu_box ul li {
	list-style: none;
	display: inline-block;
	background-color: #F8F8F8;
}

#mypage_menu_box li a {
	line-height: 70px;
	display: inline-block;
	text-decoration: none;
	text-align: center;
	width: 200px;
	height: 80px;
}
/* The Modal (background) */
.modal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 1; /* Sit on top */
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
}

/* Modal Content/Box */
.modal-content {
	background-color: #fefefe;
	margin: 15% auto; /* 15% from the top and centered */
	padding: 20px;
	border: 1px solid #888;
	width: 50%; /* Could be more or less, depending on screen size */
}
/* The Close Button */
.close {
	color: #aaa;
	float: right;
	font-size: 28px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: black;
	text-decoration: none;
	cursor: pointer;
}
</style>
<link rel="stylesheet"
	href="${cp }/resources/css/mypage/mypage_top_menu.css" type="text/css">
<link rel="stylesheet" href="${cp }/resources/css/log/memuser.css"
	type="text/css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="inquiry_wrap" class="container">
		<div id="mypage_top_menu">
			<ul>
				<li><a href="${cp }/mypage/payment.do"><span>결제내역</span></a></li>
				<li><a href="${cp }/mypage/cupon.do"><span>쿠폰함</span></a></li>
				<li><a href="${cp }/mypage/moviesaw.do"><span>내가 본
							영화</span></a></li>
				<li><a href="${cp }/mypage/inquiry.do"><span>1:1문의</span></a></li>
				<li><a href="${cp }/mypage/memberInfo.do"><span>회원정보관리</span></a></li>
			</ul>
		</div>
		<div id="mypage_menu_box">
			<ul>
				<li><a href="${cp }/log/memuser.do"> <span><img
							src="${cp }/resources/images/mypage/user.png" alt=""></span> <span>회원
							정보 변경</span>
				</a></li>
				<li><a href="${cp }/log/mempwd.do"> <span><img
							src="${cp }/resources/images/mypage/pwd.png" alt=""></span> <span>비밀번호
							변경</span>
				</a></li>
				<li><a href="${cp }/log/memsecession.do"> <span><img
							src="${cp }/resources/images/mypage/secession.png" alt=""></span>
						<span>회원탈퇴</span>
				</a></li>
			</ul>
		</div>
		<div class="cont_header">
			<h1 class="h1_tit">회원 탈퇴</h1>
			<p class="h_desc">탈퇴해도 DB에는 저장되어 있어서 삭제가 되지 않습니다.</p>
		</div>
		<div class="box_btm box_whtie">
			<div class="regi_complete">
				<h2 class="h2_tit">약관동의 철회 전 꼭 읽어주세요!</h2>
				<p class="h_desc">
					<span class="multi_line">MegaCinema 웹사이트 약관 동의를 철회 하시면
						MegaCinema 웹사이트 약관 동의 및 개인정보 제공, 활용 동의가 철회됩니다.</span><br> <span
						class="multi_line">MegaCinema 웹사이트의 이용이 제한되며, 웹사이트 약관 동의를
						철회하지 않은 타 MegaCinema 제휴 브랜드는 계속 이용 가능합니다.</span>
				</p>
				<div class="btn_center">
					<button id="myBtn" class="btn btn_sm">MegaCinema 서비스 이용약관
						전문</button>
				</div>
			</div>
			<div id="myModal" class="modal">

				<!-- Modal content -->
				<div class="modal-content">
					<span class="close">&times;</span>
					<p>
						<strong>제1장 총칙</strong><br> <br> 
						<strong>제1조(목적)</strong><br> <br> 
						본 약관은 메가시네마(주)(이하 "당사"라 함)가 제공하는 MegaCinema
						ONE(이하 "Mega"라 함) 서비스 이용과 관련하여 당사와 회원의 제반 권리, 의무, 관련 절차 등을
						규정하는데 그 목적이 있습니다.
					</p>
					<p>
						<br><strong>제2조(약관의 효력과 개정)</strong><br> <br> 
						본 당직관이 알려드립니다. 현 시간부로 대청소가 있을 예정이니 각 분대장들은 막사 내의 인원을 체크하기 바라며
						청소를 마친 다음 당직관에게 보고 및 검사를 받기 바랍니다. 이상.
					</p>
				</div>

			</div>
		</div>
		<div class="btn_sec btn_center">
			<button type="button" class="btn" id="btn_cancel" onclick = "location.href = '${cp}/' ">취소</button>
			<button type="button" class="btn btn_em" id="btn_submit" onclick = "location.href = '${cp }/log/memsecession2.do' ">약관동의
				철회</button>
		</div>
	</div>
</body>
<script>
	var modal = document.getElementById('myModal');

	var btn = document.getElementById("myBtn");

	var span = document.getElementsByClassName("close")[0];

	btn.onclick = function() {
		modal.style.display = "block";
	}

	span.onclick = function() {
		modal.style.display = "none";
	}

	window.onclick = function(event) {
		if (event.target == modal) {
			modal.style.display = "none";
		}
	}
</script>
</html>