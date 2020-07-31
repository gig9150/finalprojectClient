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
			<li><a href="${cp}">공지사항</a><span>></span></li>
			<li><a href="${cp}/service/questionBoard.do">1:1문의</a><span>></span></li>
			<li><a href="${cp}">대관 문의</a><span>></span></li>
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
				<p>전체<span>111,111</span>건</p>
			</div>
			<form action="${cp}/service/lostThingBoard.do">
				<div class="col-md-2">
					<select class="form-control region-select">
						<option>지역 선택</option>
						<c:forEach items="${list}" var="re">
							<option value="${re}">${re}</option>
						</c:forEach>
					</select>
				</div>
				<div class="col-md-2">
					<select class="form-control branch-select"  disabled="disabled" name="branch">
						<option>극장 선택</option>
					</select>
				</div>
				<div class="col-md-2">
					<select class="form-control" name="getDate">
						<option>접수상태 선택</option>
						<option value="미답변">미답변</option>
						<option value="답변">답변완료</option>
					</select>
				</div>
				<div class="col-md-3">
					<input type="form-control" name="keyword">
					<input type="submit" class="lost-search" value="">
				</div>
			</form>
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
			<c:forEach items="${mList}" var="map">
				<script>
					console.log("DZDZ:"+${map.MISSNUM});
					console.log("DZDZ:"+${map.BRNAME});
					console.log("DZDZ:"+${map.MISSTITLE});
					console.log("DZDZ:"+${map.MISSDETAIL});
					console.log("DZDZ:"+${map.FINDDATE});
				</script>
				<tr>
					<td>${MAP.MISSNUM}</td> 
					<td>${MAP.BRNAME}</td>
					<td>${MAP.MISSTITLE}</td>
					<td>${MAP.MISSDETAIL}</td>
					<td>${MAP.FINDDATE}</td>
				</tr>
			</c:forEach>
		</table>
		<c:if test="${pu.startPageNum>5}">
			<a href="${cp}/service/lostThingBoard.do?pageNum=${pu.startPage-1}&branch=${branch}&getDate=${getDate}">[이전]</a>
		</c:if>
		<c:forEach begin="${pu.startPageNum}" end="${pu.endPageNum}" var="i">
			<a href="${cp}/service/lostThingBoard.do">[${i}]</a>
		</c:forEach>
		<c:if test="${pu.totalPageCount>=pu.endPageNum}">
			<a href="${cp}/service/lostThingBoard.do?pageNum=${pu.endPageNum+1}&branch=${branch}&getDate=${getDate}">[다음]</a>
		</c:if>
	</div>
</div>