<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	#cupon_div{
		padding: 80px 0px;
		width: 100%;
		text-align: center;
	}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="inquiry_wrap">
	<%@include file="mypageInfo.jsp" %>
	<%@include file="mypage_top_menu.jsp" %>
	<div>
		<table class="table">
		  <thead>
			<tr>
				<th>구분</th>
				<th>쿠폰명</th>
				<th>유효기간</th>
				<th>쿠폰상태</th>
			</tr>
		  </thead>
		  <tbody>
			<c:forEach items="${list }" var="vo">
				<tr>
					<td>${vo.cSort }</td>
					<td>${vo.cName }</td>
					<td>${vo.cuponStart } ~ ${vo.cuponEnd }</td>
					<td>${vo.cuponStatus }</td>
				</tr>
			</c:forEach>
			<c:if test="${empty list}">
				<tr>
					<td colspan="4">
						<div id="cupon_div">
							<img src="${cp }/resources/images/mypage/inquiry.png"/>
							<p>사용 가능한 쿠폰이 없습니다.</p>
						</div>
					</td>
				</tr>
			</c:if>	
		  </tbody>
		</table>
		</div>
</div>
</body>
</html>