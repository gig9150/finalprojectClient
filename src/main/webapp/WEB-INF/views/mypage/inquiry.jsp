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
<script type="text/javascript" src="${cp }/resources/js/jquery-3.5.1.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="inquiry_wrap">
	<%@include file="mypageInfo.jsp" %>
	<%@include file="mypage_top_menu.jsp" %>
	
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
							<input type="button" value="문의등록" onclick="location.href='${cp}/mypage/inquiryInsert.do'" class="btn">
						</div>
					</td>
				</tr>
			</c:if>	
		  </tbody>
		</table>
		<div id="inquiry_page">
			<div style="text-align: center;">
				<c:forEach var="i" begin="${pu.startPageNum }" end="${pu.endPageNum }">
					<li style="text-align: center;"><a href="${cp }/mypage/inquiry.do?pageNum=${i}">[${i }]</a></li>
				</c:forEach>
			</div>
			<div style="text-align: right;">
				<button style="background-color: orange; width: 138px; height: 30px" onclick="location.href='${cp}/mypage/inquiryInsert.do'">문의등록</button>
			</div>
		</div>
	</div>
</div>




</body>
</html>






