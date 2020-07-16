<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script type="text/javascript" src="${cp }/resources/js/jquery-3.5.1.js"></script>

<style>
* {
	list-style: none;
	maring: 0;
	padding: 0;
}

#content_wrap {
	width: 980px;
	height: 1200px;
	margin: auto;
	padding: 50px 0 0 0;
}

.align_list >li {
	float: left;
}
#aaaa{
	width: 100%;
	height: 20%;
}
#test_div {
	border: 1px solid red;
	height: 70%;
	width: 100%;
}

</style>
	<div id="content_wrap">
		<div id="aaaa">
		<ul class="main_title">
			<li>현재상영작</li>
		</ul>
		<ul class="align_list">
			<li><a href="#">관객수순</a></li>
			<li><a href="#">평점순</a></li>
			<li><a href="#">관람평순</a></li>
		</ul>
		</div>
		<div id="test_div">

				<c:forEach var="movieList" items="${allMovieList }">
					<div style="border:1px solid blue; width:150px; display: inline-block; float:left">
						<img src="${movieList.movieImgUrl }" style="width:150px;"/>
						<p style="align:center; font-size: 0.7em">${movieList.filmName }</p>
						<p>${movieList.totalPeople }</p>
					</div>
				</c:forEach>

		</div>
	</div>
