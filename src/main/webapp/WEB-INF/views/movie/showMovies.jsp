<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script type="text/javascript" src="${cp }/resources/js/jquery-3.5.1.js"></script>
<script type="text/javascript">
	$(document).ready(function() {

	});
</script>
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
	background-color: violet;
	position: absolute;
}

#nav_list {
	width: 100%;
	height: 50px;
	margin: 0;
	padding: 0;
}

.btn_type li {
	float: right;
	border-right: 1px solid #ccc;
	line-height: 10px;
	padding-left: 20px;
	text-align: center;
	padding-left: 20px;
}
</style>
<div class="container">
	<div id="content_wrap">
		<div id="nav_list">
			<ul class="main_title">
				<li>현재상영작</li>
			</ul>
			<ul class="btn_type">
				<li><a href="#">관객수순</a></li>
				<li><a href="#">평점순</a></li>
				<li><a href="#">관람평순</a></li>
			</ul>
		</div>

		<div id="movie_list"
			style="display: flex; position: relative; width: 90%; background-color: orange;">
			<ul>
				<c:forEach var="movieList" items="${allMovieList }" varStatus="i">

					<li class="screen_add_box" style="float: left; margin-right: 20px;">
						<div>
							<span><img src="${movieList.movieImgUrl }"
								style="width: 150px;" /></span>
							<div>
								<strong class="tit_info" style="display: block;">${movieList.filmName }</strong>
								<span class="sub_info"> <span class="rate_info">예매율 ${movieList.rRate} </span> 
								<span class="star_info">${moviesByMRate.get(i.index).mRate }</span>
								</span>
							</div>
						</div>
					</li>

				</c:forEach>
			</ul>
		</div>
	</div>
</div>
<script>
	function clickMReview() {
		$.ajax({
			type : 'GET',
			url : "<>"
		})
	}
</script>
