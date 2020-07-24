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
			<h1 class="h1_tit">비밀번호 변경</h1>
			<p class="h_desc">비밀번호는 2-3개월에 한 번씩 바꿔주시면 까먹습니다. </p>
	</div>
	<form action="">
		<div class="member_info">
			<div class="table_header">
				<h3 class="h3_tit">비밀번호 변경</h3>
			</div>
			<div class="table_col">
				<table>
					<colgroup>
						<col style="width: 25%">
						<col>
					</colgroup>
					<tbody>
						<tr class="input">
							<th scope="row"><label for="mob_no_1">비밀번호</label></th>
							<td><span class="input_txt w100"> <input type="text"
									class="text narrow" title="전화번호 입력" data-format="num"
									name="mob_no_2" id="mob_no_2" maxlength="4" autocomplete="off">
							</span>
						</tr>
						<tr class="input">
							<th scope="row"><label for="email_addr1">비밀번호 확인</label></th>
							<td>
								<input type="text"
									class="text narrow" title="이메일 입력" data-format="num"
									name="mob_no_2" id="mob_no_2" maxlength="4" autocomplete="off">
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<div class="btn_sec btn_center">
			<button type="button" class="btn" id="btn_cancel" onclick = "location.href = '${cp}/' ">취소</button>
			<button type="button" class="btn btn_em" id="btn_submit">수정</button>
		</div>
		</form>
	
</div>
</body>
</html>