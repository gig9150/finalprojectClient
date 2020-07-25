/**
 * 
 */
$(function(){
	$("#btn_submit").attr("disabled", "disabled");
	
	//비밀번호 예외처리
	$("#passwd").focusout(function(){
		var val = $(this).val();
		regex = /^[A-Za-z0-9]{4,12}$/;
		if(val == "" || val == null){
			$("#passwd_chek").text("비밀번호를 작성하시오.");
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
		}else if(val != val2){
			$("#memPwd_chek").text("비밀번호가 일치 하지 않음.");
			$("#btn_submit").attr("disabled", "disabled");
		}else{
			$("#memPwd_chek").text("");
			$("#btn_submit").removeAttr("disabled");
		}
	});
});


