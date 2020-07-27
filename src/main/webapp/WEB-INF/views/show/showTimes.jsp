<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<style>
.centerplace {
	margin: auto;
	height: fit-content;
	width: 1090px;
    overflow-y: scroll;
}
.centerplace::-webkit-scrollbar {
	display: none;
}

.areas {
	margin: auto;
	height: fit-content;
	width: fit-content;
}
.brlist{
    display: inline-block;
    text-align: center;
    font-size: 20px;
    margin: 5px;
    width:
}
.manycity{
	background: linear-gradient( to top, SlateBlue, LightGray );
	height:200px;
	margin: 5px;
    padding: 15px;
    width: 1050px;
    margin-left: 19px;
}
.datetable{
	text-align: center;
}

.timetable {
	display: inline-block;
	border: 1px solid Gray;
	height: 43px;
	width: 72px;
	text-shadow: bold;
}
p {
    margin: 0 0 4px;
}
.line{
	height:1px;
	background-color:black;
}
</style>
<script type="text/javascript">
	$(window).on('load',function(){
		if('${cityAddr}'!='서울점'){
			brNameList('${cityAddr}');
		}else{
			brNameList('서울점');	
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
				for(var i=0;i<branch.length-1;i++){
					console.log(branch[i]);
					str += "<div class='brlist'><a href='${cp }/show/showTimeList.do?brName=" + branch[i]  +"&cityAddr="+ cityAddr +"'><button type='button' class='btn btn-dark' style='width: 100px; height: 50px;'>"+branch[i]+"</button></a></div>";
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
			<button type="button" class="btn btn-outline-secondary"
				value="${i.cityAddr }"
				style="height: 50px; width: 100px; font-size: unset;">${i.cityAddr }</button>
		</c:forEach>
	</div>
	<div class="manycity">
	</div>

	<div class="datetable">
		<c:forEach var="weeks" items="${weeklists }" varStatus="i">
		<a href="${cp }/show/showTimeList.do?brName=${branchName }&regDates=${weeks}">
		<button type="button" class="btn btn-light" style="font-family: fantasy;<c:if test="${i.index==0 }">background-color:gray;</c:if>">
		${weeks}</button></a>
		</c:forEach>
	</div>
	<div class="schedule">
	<h1>${citys }</h1>
	<c:set var="checkName" value="null"/>
	<c:set var="checkTheather" value="0"/>
	<c:set var="starttime" value="0"/>
	<c:forEach var="vo" items="${movlist }">
		<c:if test="${vo.filmName != checkName }">
		<br>
		<div class="line"></div>
			<div><h2 style="margin-bottom: 20px;">${vo.filmName }</h2></div>
		</c:if>
			<c:if test="${vo.theatherNum!=checkTheather }">
				<p>▶  ${vo.theatherName } | ${vo.theatherSort }
				<c:forEach var="s" items="${scount }">
					<c:if test="${vo.theatherNum==s.THEATHERNUM }">
						| ${s.CNT }석</p></c:if></c:forEach>
				</c:if>
			<div class="timetable">
			<a href="${cp }/buyscreenselected.do?filmNum=${vo.filmNum}&mScheduleNum=${vo.mScheduleNum}&theatherNum=${vo.theatherNum}">
				<fmt:formatDate value="${vo.mStartTime }" pattern="HH:mm" var="starttime"/>
				<p style="font-size: 12px; font-family: sans-serif; color: #333333; text-align: center; text-decoration-color: darkslategray;">${starttime }</p>
				<p style="font-size: 12px; font-family: sans-serif; color: #1E90FF; text-align: center;">${vo.cnt }석</p><br>
			</div></a>

		<c:set var="checkName" value="${vo.filmName }" />
		<c:set var="checkTheather" value="${vo.theatherNum }" />
		<c:set var="starttime" value="${starttime }"/>
	</c:forEach>
		</div>
</div>