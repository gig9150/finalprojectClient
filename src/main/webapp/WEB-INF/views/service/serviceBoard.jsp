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
			<li><a href="">자주 묻는 질문</a><span>></span></li>
			<li><a href="">공지사항</a><span>></span></li>
			<li><a href="${cp}/service/questionBoard.do">1:1문의</a><span>></span></li>
			<li><a href="">대관 문의</a><span>></span></li>
			<li><a href="">분실문 문의</a><span>></span></li>
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
			<h2>고객센터 홈</h2>
			<div class="service-home">
				<form class="form-inline" action="">
					<div class="form-group">
						<label>빠른 검색</label>&nbsp;&nbsp; <input type="text"
							placeholder="검색어를 입력하세요..." class="form-control"> <input
							type="submit" class="btn btn-default" value="검색 ">
					</div>
				</form>
			</div>
			<div class="row">
				<div class="col-md-4">
					<a>
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
					<a>
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
					<a>
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
						<a>
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
						<a>
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
							<a style="position:relative;left:160px;">더보기</a>
						</div>
						<div style="border-bottom:1px solid #eaeaea;">
							<ol>
								<c:forEach items="${qnaList}" var="map">
									<li>${map.QNATITLE}&nbsp;:&nbsp;${map.QNACONTENT}</li>
								</c:forEach>
							</ol>
						</div>
					</div>
					<div class="col-md-6">
						<div style="
						border-bottom: 1px solid #555;margin-bottom:20px;">
							<h3 style="display:inline-block;">공지사항</h3>
							<a style="position:relative;left:290px;">더보기</a>
						</div>
						<div style="border-bottom:1px solid #eaeaea;">
							<ol>
								<li>공지사항1:공지사항내용1</li>
								<li>공지사항1:공지사항내용1</li>
								<li>공지사항1:공지사항내용1</li>
								<li>공지사항1:공지사항내용1</li>
								<li>공지사항1:공지사항내용1</li>
							</ol>
						</div>
					</div>
				</div>
		</div>
	</div>
</div>


