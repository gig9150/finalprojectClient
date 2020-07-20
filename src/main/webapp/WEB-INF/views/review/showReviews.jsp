<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script type="text/javascript" src="${cp }/resources/js/jquery-3.5.1.js"></script>
<style>
.review_list ul li {
	border-bottom: 1px solid #eee;
}

.review_list {
	border-top: 1px solid #ccc;
}
</style>
<div class="container">
<div class="review_list">
		<c:forEach var="reviewList" items="${reviewListVo}">
			<ul>
				<li>
					<div>
						<span>${reviewList.memName}</span> | <strong>${reviewList.mScore }</strong>
					</div>
					<div>${reviewList.rContent}</div>
					<div>
						<span><fmt:formatDate value="${reviewList.mreviewDate}"
								pattern="yyyy.MM.dd" /></span>
					</div>
				</li>
			</ul>
		</c:forEach>

	</div>
</div>