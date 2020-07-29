<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
	#inquiry_wrap{
		border: 1px solid gray;
		width: 100%;
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
<div id="inquiry_wrap" class="container">
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
			<h1>${memPwd }</h1>
			<h1>${memId }</h1>
			<p class="h_desc">비밀번호는 2-3개월에 한 번씩 바꿔주시면 까먹습니다. </p>
	</div>
	<form action="${cp }/log/mempwdok.do" method="post" id="mempwdfind">
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
			<button type="button" class="btn" id="btn_cancel" onclick = "location.href = '${cp}/' ">취소</button>
			<button type="submit" class="btn btn_em" id="btn_submit">수정</button>
		</div>
		</form>
	
</div>
</body>


<script type="text/javascript">
$(function(){
	var nowpwd = ${memPwd};
	$("#btn_submit").attr("disabled", "disabled");
	//비밀번호 예외처리
	$("#passwd").focusout(function(){
		var val = $(this).val();
		regex = /^[A-Za-z0-9]{4,12}$/;
		if(val == "" || val == null){
			$("#passwd_chek").text("비밀번호를 작성하시오.");
			$("#btn_submit").attr("disabled", "disabled");
		}else if(nowpwd == val){
			$("#passwd_chek").text("다른 비밀번호를 작성하시오.");
			$("#btn_submit").attr("disabled", "disabled");
		}else if(!regex.test(val)){
			$("#passwd_chek").text("4~12자리의 영문 대소문자와 숫자로만 입력");
			$("#btn_submit").attr("disabled", "disabled");
		}else{
			$("#passwd_chek").text("");
			$("#btn_submit").attr("disabled", "disabled");
		}
	});
	
	//비밀번호 확인예외처리
	$("#memPwd").focusout(function(){
		var val = $(this).val();
		var val2 = $("#passwd").val();
		regex = /^[A-Za-z0-9]{4,12}$/;
		if(val == "" || val == null){
			$("#memPwd_chek").text("비밀번호를 작성하시오.");
			$("#btn_submit").attr("disabled", "disabled");
		}else if(nowpwd == val){
			$("#memPwd_chek").text("다른 비밀번호를 작성하시오.");
			$("#btn_submit").attr("disabled", "disabled");
		}else if(val != val2){
			$("#memPwd_chek").text("비밀번호가 일치 하지 않음.");
			$("#btn_submit").attr("disabled", "disabled");
		}else{
			$("#memPwd_chek").text("");
			$("#btn_submit").removeAttr("disabled");
		}
	});
});

</script>
</html>