<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<style>
* {
	list-style: none;
	maring: 0;
	padding: 0;
}
/*전체 content감싸는 wrap*/
#content_wrap {
	width: 970px;
	height: 1800px;
	padding: 50px 0 0 0;
	margin: auto;
/* 	border: 1px solid red; */
}
/*네비게이션 div 현재상영작 상영예정작 list & 관람평순 평점순 관객수순*/
#nav_list {
	width: 100%;
	height: 50px;
	margin: 0;
	padding: 0;
	position: relative;
}

/*현재상영작 상영예정작 list부분*/
.main_title li {
	float: left;
	padding-right: 20px;
	font-size: 20px;
	color: #000;
	text-decoration: none;
}

.sub_tab{
	text-decoration: none;

}
/*관람평순 평점순 관객수순 list부분 */

.btn_type{
	position: absolute;
	right: 0px;

}
.btn_type li {
	float: left;
	margin-right: 20px;
	font-size: 16px;
	color: #666;
	text-decoration: none;
	border-right: 1px solid #ccc;
	padding-right: 20px;
	line-height: 15px;
}


/*영화포스터 나오는 전체 box*/
#movie_screen_box{
	width: 100%;
	margin: auto;
}

.active, #movie_screen_box img:hover {
  opacity: 0.9;
  background-color: black;
}
/*
#movie_screen_box .each_movie{
	position: relative;
}


#movie_screen_box img: hover{
	
}

#movie_screen_box .each_movie src .btn_detail {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  opacity: 1;
  font-size: 16px;
  padding: 12px 24px;
  border: none;
  cursor: pointer;
  border-radius: 5px;
  text-align: center;
}*/

#movie_screen_box .each_movie src :hover {
  background-color: #ffffff;
  opacity: 0.1;
  color:black;
}

/*영화포스터 전체 ul의 각각 li속에 영화제목, 예매율*/
.screen_add_box .tit_info{
	text-align: center;
}

.screen_add_box .sub_info{
	text-align: center;
}

.rate_info{
	border-right: 1px solid #ccc;
	padding-right: 5px;
	margin-right: 5px;
	line-height: 5px;
}

</style>
<div>
	<div id="content_wrap">
		<div id="nav_list">
			<ul class="main_title">
				<li class="sub_tab"><a href="${cp}/movie/showAllMovies.do">현재상영작</a></li>
				<li class="sub_tab"><a href="#">상영예정작</a></li>
			</ul>
			<ul class="btn_type">
				<li><a href="${cp}/movie/showAllMovies.do">예매순</a></li>
				<li><a href="${cp }/movie/showAllMoviesMRate.do">평점순</a></li>
				<li><a href="#">관람평순</a></li>
			</ul>
		</div>

		<div id="movie_screen_box" >
			<ul class="movie_list" >
				<c:forEach var="movieList" items="${allMovieList }">
						<li class="screen_add_box"
						style="margin-bottom: 40px; display:inline-block">
						<div class="each_movie" style=" margin-right: 15px;">
								<img src="${movieList.movieImgUrl }"
									style="width: 220px;" />
									<div><a href="${cp}/movie/movieDetailView.do?filmNum=${movieList.filmNum }" class="btnImg" >상세정보</a></div>
								    <div style="margin-top: 10px">
									<strong class="tit_info" style="display: block;">${movieList.filmName }</strong>
									<div class="sub_info"> <span class="rate_info">예매율<strong>
											${movieList.rRate}</strong>%</span>  <span class="star_info">평점 <img src="${cp }/resources/image/movieDetail/star_small.png">
											<strong> ${movieList.mRate } </strong></span>
									</div>
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

</script>
