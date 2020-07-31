<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="service-main">
	<div class="serviceMenu">
		<p>
			<a>고객센터</a>
		</p>
		<ul>
			<li><a href="${cp}/service/serviceBoard.do">고객센터 홈</a><span>></span></li>
			<li><a href="${cp}/service/repeatedQna.do">자주 묻는 질문</a><span>></span></li>
			<li><a href="${cp}">공지사항</a><span>></span></li>
			<li class="on"><a href="${cp}/service/questionBoard.do">1:1문의</a><span
				class="on">></span></li>
			<li><a href="${cp}">대관 문의</a><span>></span></li>
			<li><a href="${cp}/service/lostThingBoard.do">분실문 문의</a><span>></span></li>
		</ul>
		<div class="customer-div">
			<div class="tit">
				<p>메가시네마 고객센터</p>
				<span>Dream center</span>
			</div>
			<p class="tel">1544-0070</p>
			<p class="time">
				<img src="${cp}/resources/logo/clock.png">10:00~19:00
			</p>
		</div>
	</div>
	<div class="service-content" style="bottom:10px;">
		<h1 style="margin-bottom:30px">1:1 문의</h1>
		<div>
			<ul>
				<li>문의하시기 전 FAQ를 확인하시면 궁금증을 더욱 빠르게 해결하실 수 있습니다.</li>
				<li>1:1 문의글 답변 운영시간 09:00 ~ 21:00</li>
			</ul>
			<div class="question-button">
				<a href="#" class="question-btn">나의 문의내역</a>
			</div>
		</div>
		<div class="agree-box">
			<dl>
				<dt>
					<input type="checkbox" id="chk" class="checkbox" required> <span><label
						for="chk"><strong>개인정보 수집에 대한 동의</strong></label></span>
						<span class="agree-span">[필수]</span>
				</dt>
				<dd>
					귀하께서 문의하신 다음의 내역은 법률에 의거 개인정보 수집·이용에 대한 본인동의가 필요한 항목입니다.<br>
					<br> [개인정보의 수집 및 이용목적]<br> 회사는 단체관람/대관 문의 내역의 확인, 요청사항 처리
					또는 완료 시 원활한 의사소통 경로 확보를 위해 수집하고 있습니다.<br>
					<br> [수집하는 개인정보의 항목]<br> 이름, 연락처, 이메일 주소<br>
					<br> [개인정보의 보유기간 및 이용기간]<br> 문의 접수 ~ 처리 완료 후 6개월<br>
					(단, 관계법령의 규정에 의하여 보존 할 필요성이 있는 경우에는 관계 법령에 따라 보존)<br> 자세한 내용은
					'개인정보 처리방침'을 확인하시기 바랍니다.<br>
			</dl>
		</div>
		<div class="container question-div">
			<form name="form-test" onsubmit="return askException()"
			 method="get">
				<div class="row">
					<input type="hidden" value="${memNum}" name="num">
					<div class="col-xs-6 form-group">
						<label for="name"> 이름 </label> <input type="text" id="name"
							name="name" class="form-control" value="${memId}">
					</div>
					<div class="col-xs-6 form-group">
						<label for="email"> 이메일 </label> <input type="text" id="email"
							name="email" class="form-control" value="${memEmail}">
					</div>
				</div>
				<div class="row">
					<div class="col-xs-9 form-group has-warnin">
						<label for="street"> 휴대폰 <br></label> <input type="text"
							id="street" name="street" class="form-control street"> -
						<input type="text" name="street" class="form-control street">
						- <input type="text" name="street" class="form-control street">
						<input type="button" class="btn btn-default street-btn" value="인증요청">
					</div>
				</div>
				<div class="row">
					<div class="col-xs-6 form-group">
						<label for="postal"> 문의사항 </label><br> <label><input
							type="radio" id="postal" name="postal" class="radio">지점문의</label>
						<select class="form-control input-sm" disabled="disabled" id="postal-select1"><option>지역선택</option></select>
						<select class="form-control input-sm" disabled="disabled" id="postal-select2"><option>극장선택</option></select><br>
						<label><input type="radio" id="postal" name="postal" class="radio">
						기타문의</label>
						<select class="form-control input-sm" disabled="disabled">
							<option>기타문의</option>
							<option>예매/결제</option>
							<option>멤버쉽</option>
							<option>이벤트/시사회</option>
							<option>홈페이지/모바일</option>
						</select>
					</div>
					<div class="col-xs-6 form-group">
						<label for="location"> 문의 유형 </label><br> <select
							class="form-control input-sm">
							<option>일반문의</option>
							<option>칭찬</option>
							<option>불만</option>
							<option>제안</option>
						</select>
					</div>
				</div>
				<div class="row">
					<div class="col-xs-12 form-group">
						<label for="title"> 제목 </label> <input type="text" id="title"
							name="title" class="form-control">
					</div>
				</div>
				<div class="row">
					<div class="col-xs-12 form-group">
						<label for="content"> 내용 </label>
						<textarea id="content" name="content" class="form-control"
							rows="3"></textarea>
					</div>
				</div>

				<div class="row text-right">
					<div class="col-xs-12">
						<input type="submit" value="등록 " class="btn btn-lg btn-success">
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
</div>
</div>
<script>
	//예외 처리
	$(function(){
		$(".question-btn").click(function(e){
			if(${memId eq null} || ${memId eq ""}){
				alert("로그인 후 이용 가능합니다...");	
				e.preventDefault();
			}
		});
		
// 		$(".street-btn").click(function(){
// 			var num = 0;
// 			$(".street").each(function(i,val){
// 				console.log(val);
// 				if($(val).val()==null || $(val).val()==""){
// 					alert("번호를 입력하세요.");
// 					return false;
// 				}
// 				num++;
// 			});
// 			if(num>=3){
// 				alert("인증이 완료되었습니다.");
// 				$(".street").each(function(i,val){
// 					$(this).prop("disabled",true);
// 				});
// 			}
// 		});
		
		
		function askException(){
			alert("submit");
			if(${memId eq null} || ${memId eq ""}){
				alert("회원만 등록 가능합니다...");
				return false;
			}
			if($("#name").val() == "" || $("#name").val() == null){
				alert("아이디를 입력하세요");
				return false;
			}
			if($("#email").val() == "" || $("#email").val() == null){
				alert("이메일을 입력하세요");
				return false;
			}
			if($("#title").val() == "" || $("#title").val() == null){
				alert("제목을 입력하세요");
				return false;
			}
			if($("#content").val() == "" || $("#content").val() == null){
				alert("내용을 입력하세요");
				return false;
			}
			alert("문의가 등록 되었습니다..");
		}
	});
	
	
</script>