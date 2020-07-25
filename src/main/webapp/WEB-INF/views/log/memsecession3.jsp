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
<link rel="stylesheet" href="${cp }/resources/css/log/memuser.css" type="text/css">
<script src="${cp }/resources/js/log/mempwd.js"></script>
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
	<div class="cont_header">
			<h1 class="h1_tit">보안 비밀 번호 입력</h1>
			<p class="h_desc">온라인 고객 정보보호를 위한 본인 확인 절차 입니다.<br> MegaCinema 로그인시 사용하는 비밀번호를 입력해 주세요. </p>
	</div>
	<form action="">
		<div class="member_info">
			<div class="table_col">
				<table>
					<colgroup>
						<col style="width: 25%">
						<col>
					</colgroup>
					<tbody>
						<tr class="input">
							<th scope="row"><label for="mob_no_1">비밀번호</label></th>
							<td>
							<span class="input_txt w100"> <input type="password"
									class="text narrow" title="비밀번호 입력" data-format="num"
									name="passwd" id="passwd" autocomplete="off">
							</span>
							<div class="chek_font" id="passwd_chek"></div>
							</td>
						</tr>
						<tr class="input">
							<th scope="row"><label for="email_addr1">비밀번호 확인</label></th>
							<td>
								<input type="password"
									class="text narrow" title="비밀번호 다시 입력" data-format="num"
									name="memPwd" id="memPwd" autocomplete="off">
									<div class="chek_font" id="memPwd_chek"></div>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<div class="btn_sec btn_center">
			<button type="button" class="btn btn_em" id="btn_submit">확인</button>
		</div>
		</form>
</div>
</body>
</html>