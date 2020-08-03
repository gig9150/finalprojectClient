<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<div class="service-main">
	<div class="serviceMenu">
		<p>
			<a>고객센터</a>
		</p>
		<ul>
			<li><a href="${cp}/service/serviceBoard.do">고객센터 홈</a><span>></span></li>
			<li class="on"><a href="${cp}/service/repeatedQna.do">자주 묻는
					질문</a><span class="on">></span></li>
			<li><a href="${cp}/service/noticeBoard.do">공지사항</a><span>></span></li>
			<li><a href="${cp}/service/questionBoard.do">1:1문의</a><span>></span></li>
			<li><a href="${cp}/service/questionBoard.do">대관 문의</a><span>></span></li>
			<li><a href="${cp}/service/lostThingBoard.do">분실문 문의</a><span>></span></li>
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
	<div class="service-content">
		<div class="container" id="service-home-container"
			style="padding-bottom: 30px;">
			<h1 style="margin-bottom: 30px;">자주 묻는 질문</h1>
			<div class="service-home">
				<form class="form-inline" action="${cp}/service/repeatedQna.do?pageNum=${pu.pageNum}&qnaTitle=${qnaTitle}">
					<div class="form-group">
						<label>빠른 검색</label>&nbsp;&nbsp; <input name="qnaTitle" type="text"
							placeholder="검색어를 입력하세요..." class="form-control"
							style="width: 450px;"> <input type="submit"
							class="btn btn-default" value="검색 ">
					</div>
				</form>
			</div>
			<div class="repeated-qna-menu">
				<ul class="repeated-qna-ul">
					<li class="repeated-qna-li" style="background: #555555"><a
						href="${cp}/service/repeatedQna.do?pageNum=${pu.pageNum}&qnaTitle=${qnaTitle}" 
						class="repeated-qna-a" style="color: #ffffff">전체</a></li>
					<li class="repeated-qna-li"><a href="#" class="repeated-qna-a">영화예매</a></li>
					<li class="repeated-qna-li"><a href="#" class="repeated-qna-a">쿠폰</a></li>
					<li class="repeated-qna-li"><a href="#" class="repeated-qna-a">극장</a></li>
					<li class="repeated-qna-li"><a href="#" class="repeated-qna-a">홈페이지/모바일</a></li>
					<li class="repeated-qna-li"><a href="#" class="repeated-qna-a">스토어</a></li>
					<li class="repeated-qna-li"><a href="#" class="repeated-qna-a">회원
							등급</a></li>
					<li class="repeated-qna-li"><a href="#" class="repeated-qna-a">vip</a></li>
				</ul>
			</div>
			<div class="row repeated-qna-row">
				<c:forEach items="${list}" var="vo">
					<div class="col-md-12 repeated-qna-main">
						<div class="repeated-qna-main-one">
							<a>
								<p>Q.&nbsp;${vo.qnaTitle}</p>
							</a>
						</div>
						<div class="repeated-qna-main-two">
							<p>
								<span>A.</span>&nbsp;${vo.qnaContent}
							</p>
						</div>
					</div>
				</c:forEach>
				<div class="col-md-12 repeated-qna-main-paging">
					<nav class="pagination">
						<c:choose>
							<c:when test="${pu.startPageNum>=6}">
								<a href="${cp}/service/repeatedQna.do?pageNum=${pu.startPageNum-1}&qnaTitle=${qnaTitle}" 
								aria-label="Previous">
						        	<span aria-hidden="true" style="font-size:35px;">&laquo;</span>
						      	</a>
							</c:when>
							<c:otherwise>
								<a href="#" 
								aria-label="Previous">
						        	<span aria-hidden="true" style="font-size:35px;">&laquo;</span>
						      	</a>
							</c:otherwise>
						</c:choose>
						<c:forEach var="i" begin="${pu.startPageNum}" end="${pu.endPageNum}">
							<c:choose>
								<c:when test="${i==pu.pageNum}">
									<a href="${cp}/service/repeatedQna.do?pageNum=${i}&qnaTitle=${qnaTitle}">
									<strong class="active">${i}</strong></a>
								</c:when>
								<c:otherwise>
									<a href="${cp}/service/repeatedQna.do?pageNum=${i}&qnaTitle=${qnaTitle}">${i}</a>
								</c:otherwise>
							</c:choose>
						</c:forEach>
						<c:choose>
							<c:when test="${pu.totalPageCount>pu.endPageNum}">
								<a href="${cp}/service/repeatedQna.do?pageNum=${pu.endPageNum+1}&qnaTitle=${qnaTitle}" 
								aria-label="Previous">
						        	<span aria-hidden="true" style="font-size:35px;">&raquo;</span>
						      	</a>
							</c:when>
							<c:otherwise>
								<a href="#" 
								aria-label="Previous">
						        	<span aria-hidden="true" style="font-size:35px;">&raquo;</span>
						      	</a>
							</c:otherwise>
						</c:choose>
					</nav>
				</div>
			</div>
		</div>
	</div>
</div>