<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<div class="service-main">
	<div class="serviceMenu">
		<p>
			<a>고객센터</a>
		</p>
		<ul>
			<li><a href="${cp}/service/serviceBoard.do">고객센터 홈</a><span>></span></li>
			<li><a href="${cp}/service/repeatedQna.do">자주 묻는
					질문</a><span>></span></li>
			<li class="on"><a href="${cp}/service/noticeBoard.do">공지사항</a><span class="on">></span></li>
			<li><a href="${cp}/service/questionBoard.do">1:1문의</a><span>></span></li>
			<li><a href="${cp}/service/questionBoard.do">대관 문의</a><span>></span></li>
			<li><a href="${cp}/service/lostThingBoard.do">분실문 문의</a>
			<span>></span></li>
		</ul>
		<div class="customer-div">
			<div class="tit">
				<p>메가시네마 고객센터</p>
				<span>Dream center</span>
			</div>
			<p class="tel">1544-0070</p>
			<p class="time">
				<img src="${cp}/resources/logo/clock.png">10:00~19:00
			</p>
		</div>
	</div>
	<div class="service-content lost-thing-main" style="bottom: 460px;">
		<h1 style="margin-bottom:50px">공지사항</h1>
		<div>
			
		</div>
		<div class="row lost-table-menu">
			<div class="col-md-3">
				<p>전체&nbsp;<span style="color: #01738b">2</span>&nbsp;건</p>
			</div>
			<div class="col-md-2">
				
			</div>
			<div class="col-md-2">
				<select class="form-control region-select">
					<option>지역 선택</option>
					<c:forEach items="${list}" var="re">
						<option value="${re}">${re}</option>
					</c:forEach>
				</select>
			</div>
			<div class="col-md-2">
				<select class="form-control branch-select"  disabled="disabled">
					<option>극장 선택</option>
				</select>
			</div>
			<div class="col-md-3">
				<input type="form-control">
				<a href="#" class="lost-search"><span class="glyphicon glyphicon-search"></span></a>
			</div>
		</div>
		<table class="table table-striped">
			<colgroup>
				<col style="width:10%"/> 
				<col style="width:20%"/>
				<col style="width:60%"/> 
				<col style="width:10%"/> 
			</colgroup>
			<tr>
				<th>번호</th><th>구분</th><th>제목</th><th>등록일</th>
			</tr>
			<tr>
				<td>1</td><td>공지</td><td>[은평점]영업 재개 안내</td><td>2020.07.28</td>	
			</tr>
			<tr>
				<td>2</td><td>공지</td><td>메가시네마 이용약관 변경 안내</td><td>2020.07.27</td>	
			</tr>
		</table>
	</div>
</div>