<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<script type="text/javascript" src="../js/jquery-3.5.1.js"></script>
<style>
.centerplace{
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
	$(function(){
		$(".areas button").click(function(){
			alert((this).val());
			var cityAddr=$(this).val();
			alert(cityAddr);
			$.ajax({
				url:"/show/showTimeList.do?cityAddr="+cityAddr,
				dataType:"json",
				success : function(data){
					var branch=data.citys.split(",");
					var str=for(int i=0;i<=i.length;i++){
						"<div style='display:block-align;'>"+branch[i]+"</div>";
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
		<p>${locatedList.citys }</p>
	</div>
</div>
