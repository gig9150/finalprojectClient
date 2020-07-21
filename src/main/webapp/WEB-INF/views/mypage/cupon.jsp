<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	#cupon_div{
		padding: 80px 0px;
		width: 100%;
		text-align: center;
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
			<li><a href="${cp }/mypage/cupon.do"><span>쿠폰함</span></a></li>
			<li><a href="${cp }/mypage/moviesaw.do"><span>내가 본 영화</span></a></li>
			<li><a href="${cp }/mypage/inquiry.do"><span>1:1문의</span></a></li>
			<li><a href="${cp }/mypage/memberInfo.do"><span>회원정보관리</span></a></li>
		</ul>
	</div>
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