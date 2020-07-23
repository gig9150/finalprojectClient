<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
.centerplace {
	margin: auto;
	height: fit-content;
	width: fit-content;
}

.areas {
	margin: auto;
	height: fit-content;
	width: fit-content;
}
</style>
<script type="text/javascript">
	$(window).on('load',function(){
		$(".areas button").click(function(){
			var cityAddr=$(this).val();
			alert(cityAddr);
			$.ajax({
				url:"http://localhost:8082/project/show/showTimers.do?cityAddr="+cityAddr,
				dataType:"json",
				success:function(data){
					$(".manycity*").remove;
					console.log("들어옴");
					var branch=data.citys.split(",");
					var str='';
					console.log(branch[0]);
 					for(var i=0;i<branch.length;i++){
 						console.log(branch[i]);
 						str += "<p>"+branch[i]+"</p>";
 						console.log(str);
 					}
 					$(".manycity").append(str);
				}
			});
		});
		
	});
</script>

<div class="centerplace">
	으 아 아 악
	<div class="areas">
		<c:forEach var="i" items="${list }">
			<button type="button" class="btn btn-outline-info"
				value="${i.cityAddr }"
				style="height: 50px; width: 100px; font-size: unset;">${i.cityAddr }</button>
		</c:forEach>
	</div>
	<div class="manycity">

	</div>
</div>
