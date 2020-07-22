<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<head>
<style>
	#inquiry_wrap{
		width: 50%;
		height: 100%;
		margin: auto;
		margin-bottom: 50px;
	}
	#inquiry_page li{
		text-align: center;
		list-style: none;
		display: inline-block;
	}
	#inquiry_page{
		text-align: center;
	}
	#inquiry_page input{
		text-align: center;
	}
	#inquiry_div{
		padding: 80px 0px;
		width: 100%;
		text-align: center;
	}
	#inquiry_div p{
		font-size: 24px;
	}
</style>
<link rel="stylesheet" href="${cp }/resources/css/mypage/mypage_top_menu.css" type="text/css">
<script type="text/javascript" src="${cp }/resources/js/jquery-3.5.1.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="inquiry_wrap">
	<div id="mypage_top_menu">
		<ul>
			<li><a href="${cp }/mypage/payment.do"><span>결제내역</span></a></li>
			<li><a href="${cp }/mypage/cupon.do"><span>쿠폰함</span></a></li>
			<li><a href="${cp }/mypage/moviesaw.do"><span>내가 본 영화</span></a></li>
			<li><a href="${cp }/mypage/inquiry.do"><span>1:1문의</span></a></li>
			<li><a href="${cp }/mypage/memberInfo.do"><span>회원정보관리</span></a></li>
		</ul>
	</div>
	
	<div>
	<h4>나의 문의내역</h4>
		<table class="table table-bordered">
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
				<tr>
					<th>${pu.totalRowCount - vo.rnum +1 }</th>
					<th><a href="${cp }/mypage/inquiryDatail.do?askNum=${vo.askNum}">${vo.qnaTitle }</a></th>
					<th>${vo.askRegdate }</th>
					<th>${vo.response }</th>
				</tr>
			</c:forEach>
			<c:if test="${empty list}">
				<tr>
					<td colspan="4">
						<div id="inquiry_div">
							<img src="${cp }/resources/images/mypage/inquiry.png"/>
							<p>문의 내역이 존재하지 않습니다.</p>
							<input type="button" value="문의등록" onclick="location.href='#'" class="btn">
						</div>
					</td>
				</tr>
			</c:if>	
		  </tbody>
		</table>
		
		<div id="inquiry_page">
			<c:forEach var="i" begin="${pu.startPageNum }" end="${pu.endPageNum }">
				<li><a href="${cp }/mypage/inquiry.do?pageNum=${i}">[${i }]</a></li>
			</c:forEach>
		</div>
	</div>
</div>




</body>
</html>






