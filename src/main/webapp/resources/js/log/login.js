/**
 * 
 */
$(function(){
	$("#submit").attr("disabled", "disabled");
	
	$("#memId").focusout(function(){
		var val = $(this).val();
		if(val == "" || val == null){
			$("#submit").attr("disabled", "disabled");
		}else{
			$("#submit").removeAttr("disabled");
		}
	});
	
	$("#memPwd").focusout(function(){
		var val = $(this).val();
		if(val == "" || val == null){
			$("#submit").attr("disabled", "disabled");
		}else{
			$("#submit").removeAttr("disabled");
		}
	});
	
	

});