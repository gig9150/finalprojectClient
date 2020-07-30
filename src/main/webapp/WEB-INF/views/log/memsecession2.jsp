<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
#inquiry_wrap {
	border: 1px solid gray;
	width: 50%;
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
	<div id="inquiry_wrap">
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
			<h1 class="h1_tit">약관동의 철회</h1>
			<p class="h_desc">한번만 더 생각해보고 철회 하시면 안될까요? 살려줘요...</p>
		</div>
		<div class="cont_area">
			<div class="mypage_sec">

				<div class="regi_complete">
					<span class="bg bg face_type2"></span>
					<p class="h2_tit">
						<strong class="em">MegaCinema</strong>웹사이트 약관 동의 철회를 하시겠습니까?
					</p>
					<p class="h_desc">MegaCinema 회원 탈퇴하시면 해당 웹사이트의 이용이 중지됩니다.</p>
					<div class="member_data box_white">
						MegaCinema 아이디 : <strong class="em">${memId }</strong>
					</div>
					<div class="btn_center">
						<button type="button" id="btn_cancel" class="btn">취소</button>
						<button type="button" id="btn_ok" class="btn btn_em" onclick = "location.href = '${cp }/log/memsecession3.do' ">약관철회
							동의</button>
					</div>
				</div>

				<div class="box_gray box_btm">
					<dl class="box_info">
						<dt>약관 철회 시 유의사항</dt>
						<dd>
							<ul class="bul_list">
								<li class="dot_arr"><strong class="em">MegaCinema
								</strong> 웹사이트 약관 동의 철회 시에도 MegaCinema 멤버십 서비스 및 타 제휴 브랜드의 이용을 위해 회원님의
									개인정보 및 거래정보는 MegaCinema 회원 탈퇴 시까지 보존됩니다.</li>
								<li class="dot_arr"><strong class="em">MegaCinema</strong>
									웹사이트 약관 동의 철회 후에도, 다시 약관 동의를 거치면 해당 웹사이트를 이용할 수 있습니다.</li>
							</ul>
						</dd>
					</dl>
				</div>

			</div>
		</div>
	</div>
</body>
<script>
	$(function() {
		$("#btn_cancel").click(goCancel);

		function goCancel() {
			if (!confirm('취소하시겠습니까?'))
				return;
			history.back();
		}
	});
</script>
</html>