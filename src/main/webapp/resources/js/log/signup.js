/**
 * 
 */
$(function(){
	//$("#submit").attr("disabled", "disabled");
	
	//이름 예외 처리
	$("#memName").focusout(function(){
		var val = $(this).val();
		regex =/^[가-힣]{2,4}$/;
		if(val == "" || val == null){
			$("#name_chek").text("이름을 작성하시오.");
			$("#submit").attr("disabled", "disabled");
		}else if(!regex.test(val)){
			$("#name_chek").text("한글 2-4자리 입력");
			$("#submit").attr("disabled", "disabled");
		}else{
			$("#name_chek").text("");
			$("#submit").removeAttr("disabled");
		}
	});
	
	//아이디 예외처리
	$("#memId").focusout(function(){
		var val = $(this).val();
		var cp='${cp}';
		regex = /^[a-zA-Z0-9]{4,12}$/;
		if(val == "" || val == null){
			$("#id_chek").text("아이디를 작성하시오.");
			$("#submit").attr("disabled", "disabled");
		}else if(!regex.test(val)){
			$("#id_chek").text("4~12자리의 영문 대소문자와 숫자로만 입력");
			$("#submit").attr("disabled", "disabled");
		}else{
			$.ajax({
				url : "../log/idcheck.do",
				data : {memId:val},
				/*dataType :"JSON",*/
				/*contentType: "application/json; charset=utf-8",*/
				success : function(data){
					alert(data);
					console.log(data)
					if(data=='success'){
						$("#id_chek").text("");
						$("#submit").removeAttr("disabled");
					}else{
						$("#id_chek").text("중복!!!");
						$("#submit").attr("disabled", "disabled");
					}
				},
				error : function(e){
					alert(e);
				}
			});
//			$.getJSON(
//				"../log/idcheck.do",
//				{memId:val},
//				function(data){
//					alert(data);
//					console.log(data)
//					if(data=='success'){
//						$("#id_chek").text("");
//						$("#submit").removeAttr("disabled");
//					}else{
//						$("#id_chek").text("중복!!!");
//						$("#submit").attr("disabled", "disabled");
//					}
//				}
//			);
		}
	});
	
	//전화번호 예외처리
	$("#memPhone").focusout(function(){
		var val = $(this).val();
		regex = /^01([0|1|6|7|8|9]?)?([0-9]{3,4})?([0-9]{4})$/;
		if(val == "" || val == null){
			$("#phone_chek").text("전화번호를 작성하시오.");
			$("#submit").attr("disabled", "disabled");
		}else if(!regex.test(val)){
			$("#phone_chek").text("ex)010XXXXXXXX");
			$("#submit").attr("disabled", "disabled");
		}else{
			$("#phone_chek").text("");
			$("#submit").removeAttr("disabled");
		}
	});
	
	//생년월일 예외처리
	$("#birth").focusout(function(){
		var val = $(this).val();
		regex = /^\d{6}-[1234]$/;
		if(val == "" || val == null){
			$("#birth_chek").text("생년월일을 작성하시오.");
			$("#submit").attr("disabled", "disabled");
		}else if(!regex.test(val)){
			$("#birth_chek").text("ex)000801-3");
			$("#submit").attr("disabled", "disabled");
		}else{
			$("#birth_chek").text("");
			$("#submit").removeAttr("disabled");
		}
	});
	
	//비밀번호 예외처리
	$("#passwd").focusout(function(){
		var val = $(this).val();
		regex = /^[A-Za-z0-9]{4,12}$/;
		if(val == "" || val == null){
			$("#passwd_chek").text("비밀번호를 작성하시오.");
			$("#submit").attr("disabled", "disabled");
		}else if(!regex.test(val)){
			$("#passwd_chek").text("4~12자리의 영문 대소문자와 숫자로만 입력");
			$("#submit").attr("disabled", "disabled");
		}else{
			$("#passwd_chek").text("");
			$("#submit").removeAttr("disabled");
		}
	});
	
	//비밀번호 확인예외처리
	$("#memPwd").focusout(function(){
		var val = $(this).val();
		var val2 = $("#passwd").val();
		if(val == "" || val == null){
			$("#memPwd_chek").text("비밀번호를 작성하시오.");
			$("#submit").attr("disabled", "disabled");
		}else if(val != val2){
			$("#memPwd_chek").text("비밀번호가 일치 하지 않음.");
			$("#submit").attr("disabled", "disabled");
		}else{
			$("#memPwd_chek").text("");
			$("#submit").removeAttr("disabled");
		}
	});
	
	//이메일 예외처리
	$("#email").focusout(function(){
		var val = $(this).val();
		regex = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
		if(val == "" || val == null){
			$("#email_chek").text("이메일을 작성하시오.");
			$("#submit").attr("disabled", "disabled");
		}else if(!regex.test(val)){
			$("#email_chek").text("ex)asd@gmail.com");
			$("#submit").attr("disabled", "disabled");
		}else{
			$("#email_chek").text("");
			$("#submit").removeAttr("disabled");
		}
	});
	
	$("#reset").click(function(){
		$(".chek_font").text("");
	});
});



/*
function checkform() {
	var getMail = RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/);
	var getPhone = RegExp(/^01([0|1|6|7|8|9]?)?([0-9]{3,4})?([0-9]{4})$/);
	var getName = RegExp(/^[a-zA-Z가-힣]{2,12}$/);
	var getCheck = RegExp(/^[a-zA-Z0-9]{4,12}$/);
	var fmt = RegExp(/^\d{6}-[1234]$/);

	// 이름 빈칸
	if ($("#memName").val() == "") {
		alert("이름을 쓰시오.");
		$("#memName").focus();
		return false;
	}
	if (!getName.test($("#memName").val())) {
		alert("2~12자리의 영문 대소문자  한글로만 입력.");
		$("#memName").focus();
		return false;
	}

	// 아이디 빈칸
	if ($("#memId").val() == "") {
		alert("아이디를 입력하시오.");
		$("#memId").focus();
		return false;
	}
	// 아이디 형식
	if (!getCheck.test($("#memId").val())) {
		alert("4~12자리의 영문 대소문자와 숫자로만 입력");
		$("#memId").focus();
		return false;
	}
	// 전화번호 빈칸
	if ($("#memPhone").val() == "") {
		alert("전화번호를 입력");
		$("#memPhone").focus();
		return false;
	}
	// 전화번호 숫자만 입력
	if (!getPhone.test($("#memPhone").val())) {
		alert("ex)010-0000-0000");
		$("#memPhone").focus();
		return false;
	}
	// 생일 빈칸
	if ($("#birth").val() == "") {
		alert("생년월일을 입력하세요");
		$("#birth").focus();
		return false;
	}
	// 생일 유형
	if (!fmt.test($("#birth").val())) {
		alert("(ex:000105-3)");
		$("#birth").focus();
		return false;
	}
	if ($("#passwd").val() == "") {
		alert("비밀번호를 입력하세요");
		$("#passwd").focus();
		return false;
	}
	if ($("#memPwd").val() == "") {
		alert("비밀번호를 입력하세요");
		$("#memPwd").focus();
		return false;
	}
	if ($("#passwd").val() != ($("#memPwd").val())) {
		alert("비밀번호가 맞지 않습니다.");
		$("#passwd").val("");
		$("#memPwd").val("");
		$("#passwd").focus();
		return false;
	}
	if ($("#email").val() == "") {
		alert("이메일을 입력하세요");
		$("#email").focus();
		return false;
	}
	if (!getMail.test($("#email").val())) {
		alert("이메일형식에 맞게 입력해주세요")
		$("#email").focus();
		return false;
	}
	
	return true;
	
	
	
}
*/