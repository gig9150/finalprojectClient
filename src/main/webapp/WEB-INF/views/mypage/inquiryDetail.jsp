<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<style>
#inquiry_wrap {
	width: 50%;
	height: 100%;
	margin: auto;
	margin-bottom: 50px;
}

#inquiryDetail_box {
	margin-top: 50px;
	height: 260px;
	width: 100%;
}

#inquiryDetail_header {
	height: 50px;
	width: 100%;
	border-top: 1px solid #b8b6aa;
	border-bottom: 1px solid #b8b6aa;
	background-color: #edebe1
}

.inquiryDetail_info {
	height: 100px;
	width: 100%;
	border-bottom: 1px solid gray;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="${cp }/resources/css/mypage/mypage_top_menu.css" type="text/css">
<script type="text/javascript" src="${cp }/resources/js/jquery-3.5.1.js"></script>
</head>
<body>
	<div id="inquiry_wrap">
		<div id="mypage_top_menu">
			<ul>
				<li><a href="${cp }/mypage/payment.do"><span>결제내역</span></a></li>
				<li><a href="${cp }/mypage/cupon.do"><span>쿠폰함</span></a></li>
				<li><a href="${cp }/mypage/moviesaw.do"><span>내가 본
							영화</span></a></li>
				<li><a href="${cp }/mypage/inquiry.do"><span>1:1문의</span></a></li>
				<li><a href="${cp }/mypage/memberInfo.do"><span>회원정보관리</span></a></li>
			</ul>
		</div>
		<h4>나의 문의내역</h4>
		<table class="table">
			<thead>
				<tr>
					<th style="background-color: #e2e2e0;">
						<p>
							<span>답변 중</span><strong>${vo.qnaTitle }</strong>
							<span>등록일</span><em>${vo.askRegdate }</em>
						</p>
					</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>
						<dl >
							<dt>문의CGV</dt>
							<dd>
								<strong>CGV본사</strong>
							</dd>
							<dt>연락처</dt>
							<dd>
								<strong>${vo.memPhone }</strong>
							</dd>
							<dt>첨부파일</dt>
							<dd></dd>
							<dt>이메일</dt>
							<dd>
								<span>${vo.email }</span>
							</dd>
						</dl>
					</td>
				</tr>
				<tr>
					<td>
						<div>ㅇ</div>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>