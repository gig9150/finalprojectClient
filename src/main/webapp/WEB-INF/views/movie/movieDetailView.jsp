<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script type="text/javascript" src="${cp }/resources/js/jquery-3.5.1.js"></script>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<style>
* {
	padding: 0;
	margin: 0;
	list-style: none;
}

#content_wrap {
	width: 980px;
	height: 1800px;
	background-color: violet;
}

.page_title {
	border-bottom: solid 2px #ccc;
	padding-bottom: 20px;
}

/*첫번째 section 포스터부터 개봉일까지*/
.section1 {
	width: 100%;
	height: 40%;
	background-color: gray;
}

/*영화포스터*/
.div_img {
	float: left;
	height: 100%;
}
/*영화정보 담고있는 길쭉한 content
여기에는 영화이름, 감독,배우정보,개봉일 등
*/
.box_contents {
	margin-left: 40px;
	background-color: #ffffff;
	width: 600px;
	height: 100%;
	float: left;
	border: solid 4px black;
}

.movie_rate {
	width: 100%;
	height: 50px;
	border: solid 2px green;
	margin-bottom: 40px;
}

.movie_rate li {
	float: left;
	padding-right: 10px;
}

.movie_spec {
	width: 100%;
	height: 150px;
	border: solid 2px violet;
}
/*두번째 section 영화줄거리, 평점 및 관람평*/
.section2 {
	background-color: #ccc;
	width: 100%;
	height: 60%;
}

</style>

<div class="container">
	<div id="content_wrap">
		<h3 class="page_title">영화상세</h3>
		<div class="section1">

			<div class="div_img">
				<img src="${movieDetailRate.movieImgUrl }"
					style="width: 270px; background-color: pink;">
			</div>
			<div class="box_contents">
				<div class="movie_title"
					style="font-size: 30px; font-weight: normal;">
					<strong>${movieDetailVo.filmName }</strong>
				</div>
				<div class="movie_rate">
					<ul class="show_percentage" style="font-size: 18px;">
						<li>예매율 <strong>${movieDetailRate.rRate }%</strong>
						</li>
						<li>평점 <img
							src="${cp }/resources/image/movieDetail/star_small.png"><strong>${movieDetailRate.mRate }</strong></li>
						<li>누적관객수 <strong>${movieDetailRate.totalSum } </strong>명
						</li>
					</ul>

				</div>
				<div style="border-top: solid 1px #ccc; width: 500px;"></div>
				<div class="movie_spec">
					<ul>
						<li><span>감독 : ${movieDetailVo.filmHead }</span></li>
						<li><span>배우 : ${movieDetailVo.castName }</span></li>
						<li><span>장르 : ${movieDetailVo.genreName }</span></li>
						<li><span>개봉 : <fmt:formatDate
									value="${movieDetailVo.filmStart }" pattern="yyyy.MM.dd"></fmt:formatDate></span></li>
					</ul>
				</div>
			</div>
		</div>

		<div class="section2">
			<div class="container" style="background-color: green;">
				<ul class="small_container">
					<li style="width: 100%; border: 1px solid red;">
						<button id="btn_detail" style="width: 49%">
							<span>영화상세정보</span>
						</button> <input type="hidden" id="filmNum"
						value="${movieDetailRate.filmNum}">

						<button id="btn_review" style="width: 49%;">
							<span>평점 및 관람평</span>
						</button>
						<div id="story_box" class="bottom_box">
						<p>${movieDetailVo.filmStory }</p>
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
						</div>
					</li>
				</ul>
			</div>
		</div>
	</div>
</div>
<script>
	$(function() {
		var cloneDiv = $("#story_box").clone();
		$('#btn_detail').click(function() {
			var filmNum = $("#filmNum").val();
			$("#story_box").empty();
			$("#story_box").append(cloneDiv);
			rowCount=5;
		});

		var rowCount=5;
		$('#btn_review').on('click',reviewBoard);
		
		$("#story_box").on('click',".reviewMore",reviewBoard
				);
		
		function reviewBoard(){
				var filmNum = $("#filmNum").val();
				$("#story_box").empty();
				$.ajax({
					url : "${cp}/movie/showMovieReviews.do?rowCount="+rowCount,
					type : "get",
					dateType : "json",
					data : {
						"filmNum" : filmNum
					},
					success : function(reviewListVo) {
						$(reviewListVo).each(
							function(i, review) {
								$("#story_box").append("<span>" + review.memName + "</span>");
								$("#story_box").append("<span>" + review.mScore + "</span>");
								$("#story_box").append("<div>" + review.rContent + "</div>");
								$("#story_box").append("<div>" + review.mReviewDate+ "</div>");
								rowCount=rowCount+5;
							});
						$("#story_box").append("<button class='reviewMore'>더보기</button>");
					}
				});
		}

	})//end
</script>