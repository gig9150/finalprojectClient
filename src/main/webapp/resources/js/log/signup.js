/**
 * 
 */
$(function(){
	$("#submit").attr("disabled", "disabled");
	
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
			$("#submit").attr("disabled", "disabled");
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
				success : function(data){
					console.log(data)
					if(data=='success'){
						$("#id_chek").text("");
						$("#submit").attr("disabled", "disabled");
					}else{
						$("#id_chek").text("중복되는 아이디 입니다.");
						$("#submit").attr("disabled", "disabled");
					}
				},
				error : function(e){
					alert(e);
				}
			});
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
			$("#phone_chek").text("ex)01XXXXXXXXX");
			$("#submit").attr("disabled", "disabled");
		}else{
			$("#phone_chek").text("");
			$("#submit").attr("disabled", "disabled");
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
			$("#submit").attr("disabled", "disabled");
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
			$("#submit").attr("disabled", "disabled");
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
			$("#submit").attr("disabled", "disabled");
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


