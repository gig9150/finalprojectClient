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
.brlist{
	border: dashed;
    display: inline-block;
    text-align: center;
    font-size: 20px;
    margin: 5px;
}
.manycity{
	background: linear-gradient( to top, SlateBlue, LightGray );
	height:200px;
}
p{
	font-size: 12px; 
	font-family: sans-serif; 
	font-color: #333333; 
	text-align: center; 
	text-decoration-color: darkslategray;
}
</style>
<script type="text/javascript">
	$(window).on('load',function(){
		if('${cityAddr}'!='서울'){
			brNameList('${cityAddr}');
		}else{
			brNameList('서울');	
		}
		
		$(".areas button").click(function(){
			var cityAddr=$(this).val();
			brNameList(cityAddr);
			
		});
		
	
	});
	function brNameList(cityAddr){
		$.ajax({
			url:"http://localhost:8082/project/show/showTimers.do?cityAddr="+cityAddr,
			dataType:"json",
			success:function(data){
				$(".manycity").empty();
				console.log("들어옴");
				var branch=data.citys.split(",");
				var str='';
				console.log(branch[0]);
					for(var i=0;i<branch.length;i++){
						console.log(branch[i]);
						str += "<div class='brlist'><a href='${cp }/show/showTimeList.do?brName=" + branch[i]  +"&cityAddr="+ cityAddr +"'>"+branch[i]+"</a></div>";
						console.log(str);
					}
					$(".manycity").append(str);
			}
		});
	}
	
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

	<div class="datetable">
		<c:forEach var="weeks" items="${weeklists }" varStatus="i">
		<a href="${cp }/show/showTimeList.do?brName=${branchName }&regDate=${weeks}">
		<button type="button" class="btn btn-light" style="font-family: fantasy;<c:if test="${i.index==0 }">background-color:gray;</c:if>">
		${weeks}</button></a>
		</c:forEach>
	</div>
	<div class="schedule">
	<c:forEach var="wo" items="${movlist }">
		<p>숫자 : ${wo.mScheduleNum }</p>
		<p>시간 : ${wo.mStarTime }</p>
		<p>영화산거 : ${wo.purchaseFilmNum }</p>
		<p>영화관 번호 : ${wo.theatherNum }</p>
		<p>지점 번호 : ${wo.branchNum }</p>
		<p>영화 이름 : ${wo.filmName }</p>
		<p>영화관 이름 : ${wo.theatherName }</p>
	</c:forEach>
	</div>
</div>