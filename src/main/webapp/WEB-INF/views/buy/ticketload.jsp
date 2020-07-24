<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
	<div id="movielist" style="border: 1px solid red;width: 30%;">
		<h3>영      화</h3>
		<div>
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
							<p>▶ ${vo.THEATHERNAME }
					<c:forEach var="seat" items="${scount }">
						<c:if test="${vo.THEATHERNUM==seat.THEATHERNUM }">
						| ${seat.CNT }석 <span class="badge badge-success">예매중</span></p></c:if></c:forEach>
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