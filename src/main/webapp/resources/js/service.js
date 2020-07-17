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
					$(this).parents().next().next().prop("disabled",true);
				}
			});
		}else{
			$(this).parents().next().prop("disabled",true);
			$("input:radio").each(function(){
				if(!($(this).is(":checked"))){
					$(this).parents().next().prop("disabled",true);
					$(this).parents().next().next().prop("disabled",true);
				}
			});
		}
	});
	
	$("#postal").change(function(){
		if($(this).is(":checked")){
			console.log("dzdzdz");
			$.ajax({
				url:"http://localhost:9090/project/service/question/region.do",
				type:"get",
				dataType:"json",
				success:function(data){
					$("#postal-select1 option").not('option:first').remove();
					$(data).each(function(i,val){
						var data = val.data;
						$("#postal-select1").append("<option value='"+data+"'>"+data+"</option>");
					});
				}
			});
		}
	});
	
	$("#postal-select1").change(function(){
		var proAddr = $("#postal-select1").val();
		console.log(proAddr);
		$("#postal-select2").prop("disabled",false);
		$.ajax({
			url: "http://localhost:9090/project/service/question/branch.do?proAddr="+proAddr,
			dataType:"json",
			success:function(data){
				$("#postal-select2 option").not('option:first').remove();
				$(data).each(function(i,val){
					var data = val.data;
					$("#postal-select2").append("<option value='"+data+"'>"+data+"</option>")
				});
			}
		});
	});
	
	
});