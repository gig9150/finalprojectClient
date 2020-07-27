<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
h3 {
	text-align: center;
	background-color: #333333;
	height: 70px;
	color: white;
	line-height: 60px;
}

#warbList>div {
	height: 100%;
	display: inline-block;
	float: left;
}

ul, li {
	margin: 0px;
	margin-top: 10px;
	margin-left: 15px;
	padding: 0px;
	text-align: right;
}

span {
	line-height: 37px;
	margin-right: 15px;
	font-size: 15px;
	color: white;
}

.city {
	height: 40px;
	background-color: gray;
}

.branch {
	height: 40px;
	background-color: black;
}

.hover {
	width: 60px;
	height: 40px;
	line-height: 33px;
}

.hovers {
	background-color: maroon;
}

.hoverCity {
	background-color: black;
}

.hoverBranch {
	background-color: gray;
}

.alltable {
	background-color: white;
	width: auto;
	margin-left: 200px;
	margin-right: 200px;
	height: -webkit-fill-available;
	overflow-y: scroll;
}

.alltable::-webkit-scrollbar {
	display: none;
}

.datetable {
	display: inline-block;
	font-family: fantasy;
}

.timetable {
	display: inline-block;
	border: 1px solid gray;
	height: 43px;
	width: 72px;
	text-shadow: bold;
}

.medium {
	background-color: yellow;
}

.dateyoo {
	align-content: center;
	background-color: white;
	width: fit-content;
	padding-top: 1%;
	padding-bottom: 1%;
}

.line {
	width: 100%;
	height: 1px;
	background: black;
}

.fname {
	padding-right: 10px;
	border-right: 2px;
	border-right-color: white;
	display: inline-block;
	width: auto;
}

p {
	margin-top: 0;
	margin-bottom: 0rem;
}
.alltable {
	background-color: white;
	width: auto;
	margin-left: 200px;
	margin-right: 200px;
    height: -webkit-fill-available;
	overflow-y:scroll;
}
.alltable::-webkit-scrollbar {
	display: none;
}
.datetable {
	display: inline-block;
	font-family: fantasy;
}

.timetable {
	display: inline-block;
	border: 1px solid Gray;
	height: 43px;
	width: 72px;
	text-shadow: bold;
}

.medium{
	background-color: yellow;
}

.dateyoo{
	align-content: center;
    background-color: white;
    width: fit-content;
    padding-top: 1%;
    padding-bottom: 1%;
}
.line{
	width:100%;
	height:1px;
	background: black;
}
.fname{
	padding-right: 10px;
	border-right: 2px;
	border-right-color: white;
	display:inline-block;
	width:auto;
}
p {
    margin-top: 0;
    margin-bottom: 0rem;
}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="${cp }/resources/handlebars/handlebars-v4.0.5.js"></script>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div id="warbList"
	style="width: 1200px; height: 700px; display: block; border: 2px solid black; margin: auto;">
	<div id="movielist" style="border: 1px solid red;width: 30%;">
		<h3>영      화</h3>
		<div>
			<c:forEach var="filmVo" items="${movieList }">
				<div>${filmVo.filmName }</div>
			</c:forEach>
		</div>
	</div>
	<div style="border: 1px solid blue;width: 30%;">
		<h3>상  영  관</h3>
		<div id="theatherList" style="display: inline-block;float: left;width: 50%;">
			<ul style="text-align: center;width: 90%;list-style: none;">
				<c:forEach var="vo" items="${mainCityList }">
					<li>
						<div class="city" onclick="branchList('${vo.cityaddr}')">
							<span>${vo.cityaddr }(${vo.cityCount })</span>
						</div>
					</li>
				</c:forEach>
			</ul>
		</div>
		<div style="display: inline-block;float: left;width: 50%;">
			<ul style="text-align: center;width: 90%;list-style: none;margin-top: 10px;margin-left:0px;">
				<c:forEach var="branchvo" items="${cityList }">
					<li style="text-align: left;margin-left:0px;">
						<div class="branch" onclick="dateList('${branchvo.branchNum}')">
							<span style="padding-left: 20px">${branchvo.brName }</span>
						</div>
					</li>
				</c:forEach>
			</ul>		
		</div>
	</div>
	<div id="movieday" style="border: 1px solid green;width: 10%;">
		<h3>날      짜</h3>
		<div style="overflow-y: scroll; height: 85%;">
			<div style="text-align: center;width: 50%;list-style: none; margin: auto;">
				<c:forEach var="vo" items="${monthDay }">
					<c:choose>
						<c:when test="${fn:contains(vo,'-') }">
							<c:set var="daliy" value="${vo }"/>
							<div>
								<c:set var="years" value="${fn:split(vo,'-')}" />
								<c:forEach var="year" items="${years}" varStatus="g">
								    <c:if test="${g.index == 0}">${year}년<br></c:if>
									<c:if test="${g.index == 1}">${year}월</c:if>
								</c:forEach>
							</div> 
						</c:when>
						<c:otherwise>
							<c:set var="days" value="${fn:split(vo,' ')}" />
							<c:forEach var="day" items="${days}" varStatus="g">
								<c:if test="${g.index == 1 }">
									<div class="hover" onclick="theatherList('${daliy}-${day }')">
										${vo }일
									</div>
								</c:if>
							</c:forEach>
						</c:otherwise>
					</c:choose>
				</c:forEach>
			</div>
		</div>
	</div>
	<div id="moviebuy" style="border: 1px solid blue;width: 30%;">
		<h3>시      간</h3>
			<div class="midieum">
				<c:set var="checkName" value="null" />
				<c:set var="checkTheather" value="0" />
				<c:forEach var="vo" items="${list }">
					<c:if test="${vo.FILMNAME != checkName }">
						<div><br><h2>${vo.FILMNAME }</h2></div>
					</c:if>
					<c:if test="${vo.THEATHERNUM != checkTheather }">
					<c:forEach var="seat" items="${scount }">
						<c:if test="${vo.THEATHERNUM==seat.THEATHERNUM }">
							<p>▶ ${vo.THEATHERNAME }| ${seat.CNT }석
							<span class="badge badge-success">예매중</span> </p>
						</c:if>
						
					</c:forEach>
					</c:if>		
				<div class="timetable">
						<jsp:useBean id="myDate" class="java.util.Date"/>
							<c:set target="${myDate}" property="time" value="${vo.MSTARTTIME }"/>
							<fmt:formatDate value="${myDate }" pattern="HH:mm" var="mstarttime" />
					<p style="font-size: 12px; font-family: sans-serif; font-color: #333333; text-align: center; text-decoration-color: darkslategray;">${mstarttime }</p>
				</div>
				<c:set var="checkName" value="${vo.FILMNAME }" />
				<c:set var="checkTheather" value="${vo.THEATHERNUM }" />
			</c:forEach>
		</div>
	</div>
</div>
<script type="text/javascript">
	
	var branchNum=0;
	function branchList(data) {

		alert(data);
	};
	function dateList(data) {
		branchNum=data;
		alert(branchNum);
	};
	function theatherList(data) {
		alert(data)
		if(branchNum!=0){
			$.ajax({
				url : "${cp}/buy/ticketing.do",
				dataType : "JSON",
				data : {'branchNum':branchNum,'regDate':data},
				success : function(tt){
						$("#moviebuy").children().remove();
						var checkName="";
						var checkTheather =0;
						var str="";
						str="<h3>시      간</h3>" +
							 "<div class='midieum'>";
						tt.list.forEach(function(vo,xxx){
							if(vo.FILMNAME != checkName){
								str+="<div><br><h2>"+vo.FILMNAME+"</h2></div>";
							}
							if(vo.THEATHERNUM!=checkTheather){
								tt.sCount.forEach(function(seat,yyy){
									if(vo.THEATHERNUM==seat.THEATHERNUM){
										str+="<p>▶ "+vo.THEATHERNAME+"| "+seat.CNT +"석"+
											"<span class='badge badge-success'>예매중</span> </p>";
									}
								});
							}
							str+="<div class='timetable'>"+
									"<p style='font-size: 12px; font-family: sans-serif; font-color: #333333; text-align: center; text-decoration-color: darkslategray;'>"+dateFormat(vo.MSTARTTIME)+"</p>"+
								"</div>";
							checkName=vo.FILMNAME;
							checkTheather=vo.THEATHERNUM;
						});//end forEach2
					$("#moviebuy").html(str);
				}//success end
			});//ajax end
		} else {
			alert("상영관을 눌러주세요.");
		}
	};
	
	function dateFormat(x){
		var date = new Date(x);
		var hour = date.getHours();
		if(hour<10){
			hour="0"+hour;
		}
		var min = date.getMinutes();
		if(min<10){
			min="0"+min;
		}
		return hour+":"+min;
	}
	
	
	$("#warbList").on('click','.city', function() {
		$(".city").removeClass("hoverCity");
		$(this).toggleClass("hoverCity");
	});
	$("#warbList").on('click','.branch', function() {
		$(".branch").removeClass("hoverBranch");
		$(this).toggleClass("hoverBranch");
	});

	$("#warbList").on('click','.hover', function() {
		$(".hover").removeClass("hovers");
		$(this).toggleClass("hovers");
	});
</script>
