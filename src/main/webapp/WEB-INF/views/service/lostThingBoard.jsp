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
			<li><a href="${cp}/service/noticeBoard.do">공지사항</a><span>></span></li>
			<li><a href="${cp}/service/questionBoard.do">1:1문의</a><span>></span></li>
			<li><a href="${cp}/service/questionBoard.do">대관 문의</a><span>></span></li>
			<li class="on"><a href="${cp}/service/lostThingBoard.do">분실문 문의</a>
			<span class="on">></span></li>
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
	<div class="service-content lost-thing-main">
		<h1 style="margin-bottom:30px">분실물 문의</h1>
		<div>
			<ul>
				<li>메가시네마에서 잃어버린 물건이 있다면 ‘분실물 문의/접수’를 통해 접수해주세요.</li>
				<li>접수하신 글은 비밀글로 등록되어 작성자와 관리자만 확인 가능합니다.</li>
			</ul>
			<div class="question-button">
				<a href="#" class="question-btn">분실물 문의</a>
			</div>
		</div>
		<div class="row lost-table-menu">
			<div class="col-md-3">
				<p>전체&nbsp;<span style="color: #01738b">3</span>&nbsp;건</p>
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
			<div class="col-md-2">
				<select class="form-control" name="">
					<option>미답변</option>
					<option>답변완료</option>
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
				<col style="width:10%"/> 
				<col style="width:40%"/> 
				<col style="width:20%"/> 
				<col style="width:20%"/> 
			</colgroup>
			<tr>
				<th>번호</th><th>극장</th><th>제목</th><th>접수상태</th><th>등록일</th>
			</tr>
			<tr>
				<td>1</td><td>상봉점</td><td>검정 지갑</td><td>미답변</td><td>2020.08.03</td>		
			</tr>
			<tr>
				<td>2</td><td>종로점</td><td>5관 저녁 11시 15분 반도 카드 분실</td><td>답변완료</td><td>2020.08.03</td>		
			</tr>
			<tr>
				<td>3</td><td>강남점</td><td>지갑분실물</td><td>답변완료</td><td>2020.08.03</td>	
			</tr>
		</table>
	</div>
</div>