/**
 * 
 */
$(function(){
	$("#btn_submit").attr("disabled", "disabled");
	
	//전화번호 예외처리
	$("#mob_no_2").focusout(function(){
		var val = $(this).val();
		regex = /^01([0|1|6|7|8|9]?)?([0-9]{3,4})?([0-9]{4})$/;
		if(val == "" || val == null){
			$("#phone_chek").text("전화번호를 작성하시오.");
			$("#btn_submit").attr("disabled", "disabled");
		}else if(!regex.test(val)){
			$("#phone_chek").text("ex)01XXXXXXXXX");
			$("#btn_submit").attr("disabled", "disabled");
		}else{
			$("#phone_chek").text("");
			$("#btn_submit").attr("disabled", "disabled");
		}
	});
	
	
	//이메일 예외처리
	$("#mob_no_3").focusout(function(){
		var val = $(this).val();
		regex = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
		if(val == "" || val == null){
			$("#email_chek").text("이메일을 작성하시오.");
			$("#btn_submit").attr("disabled", "disabled");
		}else if(!regex.test(val)){
			$("#email_chek").text("ex)asd@gmail.com");
			$("#btn_submit").attr("disabled", "disabled");
		}else{
			$("#email_chek").text("");
			$("#btn_submit").removeAttr("disabled");
		}
	});
	
	
});


