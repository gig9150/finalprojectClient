/**
 * 
 */
$(function(){

	$("input:radio").change(function(){
		if($(this).is(":checked")){
			$(this).parents().next().prop("disabled",false);
			$("input:radio").each(function(){
				if(!($(this).is(":checked"))){
					$(this).parents().next().prop("disabled",true);
				}
			});
		}else{
			$(this).parents().next().prop("disabled",true);
			$("input:radio").each(function(){
				if(!($(this).is(":checked"))){
					$(this).parents().next().prop("disabled",true);
				}
			});
		}
	});
	
	
	
})