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
.high{
	border-color: gray;
    border: solid 2px;
    border-radius: 10px 10px 10px 10px;
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
	border-radius: 10px 10px 10px 10px;
	border solid 3px;
	height:200px;
	margin: 5px;
    padding: 15px;
    width: 1050px;
    margin-left: 19px;
}
.datetable{
	text-align: center;
	margin-top: 30px;
}

.timetable {
	display: inline-block;
	border: 1px solid Gray;
	height: 43px;
	width: 72px;
	text-shadow: bold;
}
.timetable:hover {
	border: 2px solid black;
	background-color: LightGray;
	opacity: 1;
}
p {
    margin: 0 0 4px;
    font-size: 13px;
}
.line{
	height:1px;
	background-color:black;
}
.linetitle{
	height:1px;
	border : solid 3px;
	background-bottom-color:black;
}
.notice{
	border : solid 1px;
	border-color:gray;
	padding: 15px;
    margin-bottom: 20px;
    font-size :11px;
}
.help{
	margin-top: 10px;
    margin-bottom: 10px;
    font-size: 13px;
    font-style: oblique;
}
a:hover { 
	text-decoration:none;
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
	<div class="high">
	<p/>
	<div class="areas">
		<c:forEach var="i" items="${list }">
			<button type="button" class="btn btn-outline-default"
				value="${i.cityAddr }"
				style="height: 50px; width: 100px; font-size: unset;">${i.cityAddr }</button>
		</c:forEach>
		<div class="line"></div>
	</div>
	<div class="manycity">
	</div>
	</div>
	<div class="varchar">
	<br><h1>${brName}</h1><br>
	</div>
	<div class="linetitle"></div>
	<div class="help">
	<p style="color:MediumPurple;">* 시간을 클릭하시면 빠른 예매를 하실 수 있습니다.</p>
	</div>
	<div class="line"></div>
	<div class="datetable">
		<c:forEach var="weeks" items="${weeklists }" varStatus="i">
		<a href="${cp }/show/showTimeList.do?brName=${branchName }&regDates=${weeks}">
		<button type="button" class="btn btn-light" style="font-family: fantasy;<c:if test="${i.index==0 }">background-color:MediumPurple;</c:if>">
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
			<div><a href="${cp }?filmNum=${vo.filmNum }" style="color:black;"><h4 style="margin-top: 10px;margin-bottom: 20px; display:inline-block;">${vo.filmName }</h4></a> <span class="badge badge-info"> 상영중</span></div>
		</c:if>
			<c:if test="${vo.theatherNum!=checkTheather }">
				<p>▶  ${vo.theatherName } | ${vo.theatherSort }
				<c:forEach var="s" items="${scount }">
					<c:if test="${vo.theatherNum==s.THEATHERNUM }">
						| 총 ${s.CNT }석 </p></c:if></c:forEach>
				</c:if>
			<div class="timetable">
			<a href="${cp }/buyscreenselected.do?filmNum=${vo.filmNum}&mScheduleNum=${vo.mScheduleNum}&theatherNum=${vo.theatherNum}">
				<fmt:formatDate value="${vo.mStartTime }" pattern="HH:mm" var="starttime"/>
						<p style="font-size: 12px; font-family: sans-serif; color: #333333; text-align: center; text-decoration-color: darkslategray;">${starttime }</p>
						<p style="font-size: 12px; font-family: sans-serif; color: #1E90FF; text-align: center;">${vo.cnt }석</p><br>
			</a></div>
		<c:set var="checkName" value="${vo.filmName }" />
		<c:set var="checkTheather" value="${vo.theatherNum }" />
		<c:set var="starttime" value="${starttime }"/>
	</c:forEach>
		</div>
		<div>
			<div class="notice">
				<li>지연입장에 의한 관람불편을 최소화하고자 본 영화는 약 10분 후 시작됩니다.</li>
				<li>쾌적한 관람 환경을 위해 상영시간 이전에 입장 부탁드립니다.</li>
			</div>
		</div>
</div>