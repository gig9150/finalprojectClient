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
}

.movie_list li {
	float: left;
	position: relative;
	width: 184px;
	margin: 0 7.5px;
	text-align: center;
}

.btn_type>li {
	float: left;
}
</style>
<div class="container">
	<div id="content_wrap">
		<div id="aaaa">
			<ul class="main_title">
				<li>현재상영작</li>
			</ul>
			<ul class="btn_type">
				<li><a href="#">관객수순</a></li>
				<li><a href="#">평점순</a></li>
				<li><a href="#">관람평순</a></li>
			</ul>
		</div>
		<div id="movie_list">
			<c:forEach var="movieList" items="${allMovieList }">
				<ul>
					<li class="screen_add_box">
						<div class="top_info">
							<span class="poster_info"><img
								src="${movieList.movieImgUrl }" style="width: 150px;" /></span>
							<div class="btm_info">
								<strong class="tit_info">${movieList.filmName }</strong> <span
									class="sub_info"> <span class="rate_info">${movieList.totalPeople}
								</span> <span class="star_info"></span>

								</span>

							</div>
						</div>

					</li>
				</ul>
			</c:forEach>

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
