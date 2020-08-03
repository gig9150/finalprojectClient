<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<div class="container">
	<div class="row text-center" style="margin: 100px 0;">
        <div class="col-sm-6 col-sm-offset-3">
        <br><br> <h2 style="color:#0fad00">Success</h2>
        <img src="${cp}/resources/logo/남자사진.jpg">
        <c:choose>
	        <c:when test="${memName != null}">
	        	<h3>${memName}님</h3>
		        <p style="font-size:20px;color:#5C5C5C;">문의글 등록이 완료 되었습니다!</p>
		        <a href="${cp}" class="btn btn-success">메인화면으로 돌아가기</a>
		    	<br><br>
		    </c:when>
		    <c:otherwise>
		    	<h3>${memId}님</h3>
		    	<p style="font-size:20px;color:#5C5C5C;">요청 하신 작업이 완료 되었습니다.</p>
		        <a href="${cp}" class="btn btn-success">메인화면으로 돌아가기</a>
		    	<br><br>
		    </c:otherwise>
		</c:choose>
        </div>
	</div>
</div>