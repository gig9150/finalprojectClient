<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<head>
<style>
	#inquiry_wrap{
		border: 1px solid gray;
		width: 50%;
		height: 100%;
		margin: auto;
	}
	#inquiry_page li{
		text-align: center;
		list-style: none;
	}
	#inquiry_page input{
		text-align: right;
	}
</style>
<link rel="stylesheet" href="${cp }/resources/css/mypage/mypage_top_menu.css" type="text/css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="inquiry_wrap">
	<div id="mypage_top_menu">
		<ul>
			<li><a href="${cp }/mypage/payment.do"><span>결제내역</span></a></li>
			<li><a href="#"><span>쿠폰함</span></a></li>
			<li><a href="#"><span>내가 본 영화</span></a></li>
			<li><a href="${cp }/mypage/inquiry.do"><span>1:1문의</span></a></li>
			<li><a href="#"><span>MY 정보 관리</span></a></li>
		</ul>
	</div>
	<div>
		<table class="table table-hover">
		  <thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성일</th>
				<th>상태</th>
			</tr>
		  </thead>
		  <tbody>
			<c:forEach items="${list }" var="vo">
			<c:set var="count" value="${count + 1}" />
				<tr>
					<th>${count }</th>
					<th><a href="#">${vo.qnaTitle }</a></th>
					<th>${vo.askRegdate }</th>
					<th>${vo.response }</th>
				</tr>
			</c:forEach>
		  </tbody>
		</table>
		
		<div id="inquiry_page">
			<c:forEach var="i" begin="${pu.startPageNum }" end="${pu.endPageNum }">
				<li><a href="${cp }/mypage/inquiry.do?pageNum=${i}">[${i }]</a></li>
			</c:forEach>
			<input type="button" value="문의등록" onclick="location.href='#'">
		</div>
	</div>
</div>

</body>
</html>