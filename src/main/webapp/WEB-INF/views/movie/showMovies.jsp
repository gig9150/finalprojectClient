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
/*전체 content감싸는 wrap*/
#content_wrap {
	width: 935px;
	height: 1200px;
	margin: 0px -7.5px;
	padding: 50px 0 0 0;
}
/*네비게이션 div 현재상영작 상영예정작 list & 관람평순 평점순 관객수순*/
#nav_list {
	width: 100%;
	height: 50px;
	margin: 0;
	padding: 0;
}

/*현재상영작 상영예정작 list부분*/
.main_title li {
	float: left;
	padding-right: 20px;
	font-size: 18px;
	color: #000;
	text-decoration: none;
}
/*관람평순 평점순 관객수순 list부분 */
.btn_type li {
	float: right;
	margin-right: 20px;
	font-size: 14px;
	color: #666;
	text-decoration: none;
	border-right: 1px solid #ccc;
	padding-right: 20px;
	line-height: 15px;
}

/*영화포스터 div*/
#movie_list .container{
  position: relative;
  width: 100%;
  max-width: 400px;
}

#movie_list .container img {
  width: 100%;
  height: auto;
  border:none;
}

.active, #movie_list .container img:hover {
  opacity: 0.9;
  background-color: black;
}


#movie_list .container img: hover{
	
}

#movie_list .container .btnImg{
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  opacity: 0;

  font-size: 16px;
  padding: 12px 24px;
  border: none;
  cursor: pointer;
  border-radius: 5px;
  text-align: center;
  

}

#movie_list .container .btnImg:hover {
  background-color: #ffffff;
  opacity: 0.5;
  color:black;
}
</style>
<div class="container">
	<div id="content_wrap">
		<div id="nav_list">
			<ul class="main_title">
				<li><a href="">현재상영작</a></li>
				<li><a href="">상영예정작</a></li>
			</ul>
			<ul class="btn_type">
				<li><a href="#">예매순</a></li>
				<li><a href="#">평점순</a></li>
				<li><a href="#">관람평순</a></li>
			</ul>
		</div>

		<div id="movie_list" >
			<ul>
				<c:forEach var="movieList" items="${allMovieList }">
						<li class="screen_add_box"
						style="float: right; margin-right: 15px; margin-bottom: 40px;">
						<div>
								<div class="container"><img src="${movieList.movieImgUrl }"
									style="width: 170px;" /> 
									<a href="${cp}/movie/movieDetailView.do?filmNum=${movieList.filmNum }" class="btnImg">상세정보</a></div>
								<div>
									<strong class="tit_info" style="display: block;">${movieList.filmName }</strong>
									<span class="sub_info"> <span class="rate_info">예매율
											${movieList.rRate} </span>  <span class="star_info">평점
											${movieList.mRate }</span>
									</span>
								</div>
							</div>
						<!-- 
						<form action="MovieDetailView?filmNum=${movieList.filmNum }" method="get">
							<div>
								<div class="container"><img src="${movieList.movieImgUrl }"
									style="width: 170px;" /> <input type="submit" class="btnImg">상세보기</input></div>
								<div>
									<strong class="tit_info" style="display: block;">${movieList.filmName }</strong>
									<span class="sub_info"> <span class="rate_info">예매율
											${movieList.rRate} </span> <span class="star_info">평점
											${movieList.mRate }</span>
									</span>
								</div>
							</div>
						</form>
						 -->
					</li>
				</c:forEach>
			</ul>
		</div>
	</div>

</div>
<script>
	$("ul li a").on('click', function() {
		$("#movie_list").empty();
	});
	function clickMReview() {
		$.ajax({
			type : 'GET',
			url : "<>",
			success : function(data) {
				$("#movie_list").appen("div");

			}
		})
	}
</script>
