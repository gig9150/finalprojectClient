/**
 * 
 */
$(function(){
	function checkform() {
		var getMail = RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/);
		var getPhone = RegExp(/[0-9]/g);
		var getName = RegExp(/^[a-zA-Z가-힣]{2,12}$/);
		var getCheck = RegExp(/^[a-zA-Z0-9]{4,12}$/);
		var fmt = RegExp(/^\d{6}-[1234]$/);
		// 이름 빈칸
		if ($("#memName").val() == "") {
			$("#name_chek").text("이름을 입력하시오.");
			$("#memName").focus();
			return false;
		}
		if (!getName.test($("#memName").val())) {
			$("#name_chek").text("2~12자리의 영문 대소문자  한글로만 입력.");
			$("#memName").val("");
			$("#memName").focus();
			return false;
		}
		
		//아이디 빈칸
		if ($("#memId").val() == "") {
			alert("아이디를 입력");
			$("#memId").focus();
			return false;
		}
		//아이디 형식
		if (!getCheck.test($("#memId").val())) {
			alert("4~12자리의 영문 대소문자와 숫자로만 입력");
			$("#memId").val("");
			$("#memId").focus();
			return false;
		}
		//전화번호 빈칸
		if ($("#memPhone").val() == "") {
			alert("전화번호를 입력");
			$("#memPhone").focus();
			return false;
		}
		//전화번호 숫자만 입력
		if (!getPhone.test($("#memPhone").val())) {
			alert("전화번호 숫자로만 입력");
			$("#memPhone").val("");
			$("#memPhone").focus();
			return false;
		}
		//생일 빈칸
		if ($("#birth").val() == "") {
			alert("생년월일을 입력하세요");
			$("#birth").focus();
			return false;
		}
		//생일 유형
		if (!fmt.test($("#birth").val())) {
			alert("(ex:000105-3)");
			$("#birth").val("");
			$("#birth").focus();
			alert($("#birth").val());
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
		if(!getMail.test($("#email").val())){
	        alert("이메일형식에 맞게 입력해주세요")
	        $("#email").val("");
	        $("#email").focus();
	        return false;
	    }
		return true;
	}
	
	$("#memName").on("keypress",function(){
		//이름 빈칸
		if ($("#memName").val() == "") {
			$("#name_chek").text("이름을 입력하시오.");
			//$("#memName").focus();
		}
		if (!getName.test($("#memName").val())) {
			alert('자괴감오지');
			$("#name_chek").text("2~12자리의 영문 대소문자  한글로만 입력.");
			//$("#memName").val("");
			//$("#memName").focus();
		}else{
			$("#name_chek").text("");
		}
	});
});