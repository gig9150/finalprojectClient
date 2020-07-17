<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link href="${cp }/resources/css/log/signup.css" rel="stylesheet">
<script src="${cp }/resources/js/log/signup.js"></script>
<form onsubmit="return checkform()" method="post">
	<div id="signwarp">
		<div class="container register-form">
			<div class="form">
				<div class="note">
					<p style="font-size: 50px">회 원 가 입</p>
				</div>

				<div class="form-content">
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								이름 <input type="text" class="form-control" name="memName"
									id="memName" placeholder="이름">
									<div class="chek_font" id="name_chek"></div>
							</div>
							<div class="form-group">
								아이디 <input type="text" class="form-control" name="memId"
									id="memId" placeholder="아이디">
									<div class="chek_font" id="id_chek"></div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								전화번호 <input type="text" class="form-control" name="memPhone"
									id="memPhone" placeholder="전화번호">
									<div class="chek_font" id="phone_chek"></div>
							</div>
							<div class="form-group">
								생년월일(ex:0001053) <input type="text" class="form-control"
									name="birth" id="birth" placeholder="생년월일" value="" />
									<div class="chek_font" id="birth_chek"></div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								비밀번호 <input type="password" class="form-control" name="passwd"
									id="passwd" placeholder="비밀번호" />
									<div class="chek_font" id="passwd_chek"></div>
							</div>
							<div class="form-group">
								비밀번호 확인 <input type="password" class="form-control"
									name="memPwd" id="memPwd" placeholder="비밀번호 확인" value="" />
									<div class="chek_font" id="memPwd_chek"></div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								이메일 <input type="text" class="form-control" id="email"
									name="email" placeholder="이메일" value="" />
									<div class="chek_font" id="email_chek"></div>
							</div>
							<input type="hidden" value="브론즈" id="grade" name="grade">
						</div>
					</div>
					<div>
						<button type="submit" class="btnSubmit">Submit</button>
						<button type="reset" class="btnSubmit">Reset</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</form>