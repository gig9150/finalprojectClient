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
</style>
<link rel="stylesheet"
	href="${cp }/resources/css/mypage/mypage_top_menu.css" type="text/css">
<link rel="stylesheet" href="${cp }/resources/css/log/memuser.css"
	type="text/css">
<script src="${cp }/resources/js/log/memuser.js"></script>
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
			<h1 class="h1_tit">회원 정보 변경</h1>
			<p class="h_desc">정보를 관리해도 개인정보들은 이미 중국에 가 있습니다.</p>
		</div>
		<form action="${cp }/log/memuserok.do" method="post" id="memuser">
		<div class="member_info">
			<div class="table_header">
				<h3 class="h3_tit">기본정보</h3>
			</div>
			<div class="table_col">
				<table>
					<colgroup>
						<col style="width: 25%">
						<col>
					</colgroup>
					<tbody>
						<tr class="input">
							<th scope="row">이름</th>
							<td>
								<div class="input_group">
									<span id="hg_nm_area">${memName}</span>
								</div>
							</td>
						</tr>
						<tr>
							<th scope="row">아이디</th>
							<td><span id="mbr_id_area">${memId }</span>
							<input type="hidden" name="memId" value="${memId }">
							</td>
						</tr>
						<tr class="input">
							<th scope="row">생년월일</th>
							<td>
								<span id="mbr_id_area">${birth }</span>
								<p class="msg_desc">
									설정하신 생일을 기준으로 <em class="em">15일 전</em> 생일쿠폰이 발행됩니다.<br>
								</p>
							</td>
						</tr>
						<tr class="input">
							<th scope="row"><label for="mob_no_1">휴대전화</label></th>
							<td>
							<span id="mbr_id_area"><label for="mob_no_1">현재 전화 번호</label> : ${memPhone }</span><br>
							<span class="input_txt w100"> <input type="text" name="memPhone"
									class="text narrow" title="전화번호 입력" data-format="num"
									name="mob_no_2" id="mob_no_2" autocomplete="off">
							</span>
								<div class="phon_write" style="width: 326px"></div>
								<p class="msg_desc">주문 및 배송, 쿠폰, 이벤트 정보 등을 제공 받으실 수 있습니다.</p>
								<div class="chek_font" id="phone_chek"></div>
								</td>
						</tr>
						<tr class="input">
							<th scope="row"><label for="email_addr1">이메일</label></th>
							<td>
							<span id="mbr_id_area"><label for="mob_no_1">현재 이메일</label> : ${email }</span><br>
								<input type="text"
									class="text narrow" title="이메일 입력" data-format="num" name="email"
									name="mob_no_2" id="mob_no_3" autocomplete="off">
								<div class="email_write" style="width: 415px"></div>
								<p class="msg_desc">이메일 주소 입력 시 사용 가능 특수 문자 : - . _</p>
								<div class="chek_font" id="email_chek"></div>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<div class="btn_sec btn_center">
			<button type="button" class="btn" id="btn_cancel" onclick = "location.href = '${cp}/' ">취소</button>
			<button type="submit" class="btn btn_em" id="btn_submit">수정</button>
		</div>
		</form>
	</div>
</body>
</html>