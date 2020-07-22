<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script type="text/javascript" src="${cp }/resources/js/jquery-3.5.1.js"></script>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
#content_wrap {
	width: 980px;
	height: 1200px;
	background-color: violet;
}

.div_img {
	width: 220px;
	height: 280px;
	background-color: red;
}

.page_title {
	border-bottom: solid 2px #ccc;
	padding-bottom: 20px;
}
</style>

<div class="container">
	<div id="content_wrap">

		<h3 class="page_title">영화상세</h3>
			<div class="div_img">
				이미지영역<img src="">
			</div>
			<div class="title_movie">${movieDetailVo.filmName }</div>
	</div>
</div>