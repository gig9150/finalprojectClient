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
			<li class="on"><a href="${cp}/service/serviceBoard.do">고객센터
					홈</a><span class="on">></span></li>
			<li><a href="${cp}/service/repeatedQna.do">자주 묻는 질문</a><span>></span></li>
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
		<div class="container" id="service-home-container">
			<h1 style="margin-bottom: 30px;">고객센터 홈</h1>
			<div class="service-home">
				<form class="form-inline" action="">
					<div class="form-group">
						<label>빠른 검색</label>&nbsp;&nbsp; <input type="text"
							placeholder="검색어를 입력하세요..." class="form-control" style="width: 450px; "> <input
							type="submit" class="btn btn-default" value="검색 ">
					</div>
				</form>
			</div>
			<div class="row">
				<div class="col-md-4">
					<a href="${cp}/service/repeatedQna.do">
						<span class="glyphicon glyphicon-comment
							 service-home-glyphicon" 
							aria-hidden="true"></span>
						<p>
							<strong>자주묻는 질문</strong><br>
							자주 묻는 질문을 확인해 보세요...!!
						</p>
					</a>
				</div>
				<div class="col-md-4">
					<a href="${cp}/service/lostThingBoard.do">
						<span class="glyphicon glyphicon-folder-close
							 service-home-glyphicon" 
							aria-hidden="true"></span>
						<p>
							<strong>분실물 문의</strong><br>
							잃어버린 물건을 접수해 주시면<br> 신속히 찾아 드리겠습니다.
						</p>
					</a>
				</div>
				<div class="col-md-4">
					<a href="${cp}/service/questionBoard.do">
						<span class="glyphicon glyphicon-heart-empty
							 service-home-glyphicon" 
							aria-hidden="true"></span>
						<p>
							<strong>1:1문의</strong><br>
							해결되지 않은 문제가 있나요?<br>1:1문의로 문의주세요.
						</p>
					</a>
				</div>
				</div>
				<div class="row" style="border-bottom:1px solid black;">
					<div class="col-md-4">
						<a href="${cp}">
							<span class="glyphicon glyphicon-user
							 service-home-glyphicon" 
							aria-hidden="true"></span>
							<p>
								<strong>대관문의</strong><br>
								단체관람 및 대관을 원하시면 문의주세요!
							</p>
						</a>
					</div>
					<div class="col-md-4">
						<a href="${cp}">
							<span class="glyphicon glyphicon-pencil
							 service-home-glyphicon" 
							aria-hidden="true"></span>
							<p>
								<strong>공지사항</strong><br>
								공지사항이 궁금하시면 이곳을 클릭하세요!!
							</p>
						</a>
					</div>
				</div>
				<div class="row">
					<div class="col-md-6">
						<div style="
						border-bottom: 1px solid #555;margin-bottom:30px;">
							<h3 style="display:inline-block;">자주 묻는 질문 best5</h3>
							<a href="${cp}/service/repeatedQna.do" 
							style="position:relative;left:160px;">더보기</a>
						</div>
						<div style="border-bottom:1px solid #eaeaea;">
							<ol>
								<c:forEach items="${qnaList}" var="map">
									<a href="${cp}/service/repeatedQna.do">
									<li style="word-break:break-all;">
									<span style="color:#01738b">
									Q.</span>${map.QNATITLE}</li></a>
								</c:forEach>
							</ol>
						</div>
					</div>
					<div class="col-md-6">
						<div style="
						border-bottom: 1px solid #555;margin-bottom:20px;">
							<h3 style="display:inline-block;">공지사항</h3>
							<a href="${cp}" style="position:relative;left:290px;">더보기</a>
						</div>
						<div style="border-bottom:1px solid #eaeaea;">
							<ol>
								<a href="${cp}"><li><span style="color:#01738b">[서울점]</span>공지사항1</li></a>
								<a href="${cp}"><li><span style="color:#01738b">[상봉점]</span>공지사항2</li></a>
								<a href="${cp}"><li><span style="color:#01738b">[미아점]</span>공지사항3</li></a>
								<a href="${cp}"><li><span style="color:#01738b">[건대점]</span>공지사항4</li></a>
								<a href="${cp}"><li><span style="color:#01738b">[신촌점]</span>공지사항5</li></a>
							</ol>
						</div>
					</div>
				</div>
		</div>
	</div>
</div>


