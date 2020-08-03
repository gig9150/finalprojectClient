<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<style>
* {
	padding: 0;
	margin: 0;
	list-style: none;
}

#content_wrap_detail {
	width: 980px;
	height: 1000px;
	/*background-color: violet;*/
}

.page_title {
	border-bottom: solid 2px #ccc;
	padding-bottom: 20px;
}

/*첫번째 section 포스터부터 배우나열까지*/
.section1 {
	padding-top: 15px;
	width: 100%;
	height: 35%;
	border-bottom: 1px solid #ccc;
	/*background-color: gray;*/
}

/*영화포스터*/
.div_img {
	float: left;
}
/*영화정보 담고있는 길쭉한 content
여기에는 영화이름, 감독,배우정보,개봉일 등
*/
.box_contents {
	margin-left: 35px;
	background-color: #ffffff;
	width: 600px;
	height: 100%;
	float: left;
	/*	border: solid 4px black;*/
}

.movie_rate {
	width: 100%;
	height: 25px;
	/*	border: solid 2px green; */
	margin-bottom: 10px;
}

.movie_rate li {
	float: left;
	padding-right: 15px;
}

.movie_spec {
	width: 100%;
	height: 100px;
	margin-top: 20px;
	border-top: solid 1px #ccc;
	width: 650px;
	/*border: solid 2px violet;*/
}

.sub_title {
	font-size: 14px;
	display: inline-block;
	margin-right: 5px;
	margin-bottom: 8px;
}

.sub_title2 {
	font-weight: bold;
	font-size: 14px;
	margin-right: 20px;
}
/*두번째 section 영화줄거리, 평점 및 관람평*/
.section22 {
	/*background-color: #ccc;*/
	width: 100%;
	height: 65%;
}

/*영화상세보기*/
#btn_detail {
	border: 0 solid skyblue;
	background-color: rgba(0, 0, 0, 0);
	color: gray;
	padding: 5px;
	outline: 0;
}

#btn_detail.on{
	background-color: rgba(0, 0, 0, 0);
	color: black;
	padding: 10px;
	outline: 0;
	border-bottom: 2px solid black !important;
}
/*영화리뷰보기*/
#btn_review {
	background-color: rgba(0, 0, 0, 0);
	color: gray;
	padding: 10px;
	outline: 0;
	/*border-bottom: 1px solid #ccc !important;*/
}

#btn_review.on {
	background-color: rgba(0, 0, 0, 0);
	color: black;
	padding: 10px;
	outline: 0;
	border-bottom: 2px solid black !important;
}

/*영화리뷰div*/
.review_section {
	display: none;
}

.review_section.on {
	display: block;
}

/***********************from this point ajax append css starts ********************/
.box_div {
	margin-top: 18px;

	/*border-top: 1px solid #ccc;*/
}

.box_name {
	width: 100px;
	font-size: 15px;
	margin-right: 10px;
}

.box_mScore {
	margin-left: 3px;
	font-size: 15px;
	font-weight: bold;
}

.reviewMore {
	border: 1 solid #ccc;
	background-color: rgba(0, 0, 0, 0);
	color: gray;
	padding: 1px;
	outline: 1;
	width: 900px;
	text-align: center;
	font-size: 16px;
}

.movi_review_box {
	height: 90px;
	margin-bottom: 55px;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

.movi_review_score {
	float: left;
	width: 300px;
	height: 88px;
	background: #F8F8F8;
	text-align: center;
	border-right: 1px solid #ccc;
}

.movi_review_comment {
	float: left;
	width: 537px;
	height: 88px;
}

textarea {
	width: 100%;
	line-height: 1.5;
	box-sizing: border-box;
	padding: 13px 18px;
	border: 1px solid #DDD;
	resize: none;
	font-size: 14px;
	border-radius: 4px;
	-webkit-border-radius: 4px;
}

.btn_submit {
	float: left;
	width: 112px;
	height: 90px;
	border: none;
	margin: -1px -1px 0 0;
	padding: 0;
	background: #666;
	color: #fff;
	font-size: 15px;
}

button {
	border: none !important;
}

.starR {
	background: url('${cp}/resources/image/movieDetail/star_2.png')
		no-repeat right 0;
	background-size: auto 100%;
	margin-right: 5px;
	width: 15px;
	height: 15px;
	display: inline-block;
	text-indent: -9999px;
	cursor: pointer;
}

.starR.on {
	background-position: 0 0;
}
</style>

<div class="container">
	<div id="content_wrap_detail">
		<h3 class="page_title">영화상세</h3>
		<div class="section1">

			<div class="div_img">
				<img src="${movieDetailRate.movieImgUrl }" style="width: 200px;">
			</div>
			<div class="box_contents">
				<div class="movie_title"
					style="font-size: 30px; font-weight: normal;">
					<strong>${movieDetailVo.filmName }</strong>
				</div>
				<div class="movie_rate">
					<ul class="show_percentage" style="font-size: 16px;">
						<li style="margin-right: 6px;">예매율 <strong
							class="font-size: 17px;">${movieDetailRate.rRate }%</strong>
						</li>
						<li style="margin-right: 6px;">관람객 평점 <img
							src="${cp }/resources/image/movieDetail/star_small.png"> <strong
							class="font-size: 17px;"> ${movieDetailRate.mRate }</strong></li>
						<li>누적관객수 <strong class="font-size: 17px;">${movieDetailRate.totalSum }
						</strong>명
						</li>
					</ul>

				</div>
				<div style="padding-top: 16px;" class="movie_spec">

					<div class="sub_title">장르</div>
					<span class="sub_title2"> ${movieDetailVo.genreName }</span>

					<div class="sub_title">개봉</div>
					<span class="sub_title2"> 
							${movieDetailVo.filmStart }</span><br>
					<div class="sub_title">감독</div>
					<span class="sub_title2"> ${movieDetailVo.filmHead }</span><br>

					<div class="sub_title">배우</div>
					<span class="sub_title2"> ${movieDetailVo.actorName }</span><br>
					<div style="width: 400px;">
						<ul>
							<c:forEach var="i" begin="1" end="7">
								<li
									style="margin-bottom: 10px; margin-right: 25px; float: left;"><img
									src="${cp }/resources/image/movieDetail/img_${i}.png"
									style="width: 66px"></li>
							</c:forEach>
						</ul>
					</div>
				</div>

			</div>

			<div class="section22">

				<div class="container">

					<ul class="small_container">

						<li style="width: 100%;">

								<button id="btn_detail" class="on" style="width: 49%">

								영화상세정보

								</button>

								<button id="btn_review" style="width: 49%;">

								평점 및 관람평(${reviewCount })

								</button>

								<div id="story_box" class="bottom_box" style="padding-top: 15px">
									<p>${movieDetailVo.filmStory }</p>
								</div>
								<div class="review_section">
									<div class="movi_info">
										<div class="container">
											<span class="">총 평점</span><img
												src="${cp }/resources/image/movieDetail/star_big.png">
											 <span class="" sytle=""><strong>${movieGrade}</strong>/ 10</span>
											<p class="txt_info">
												<span>영화 관람 후 관람평을 작성하시면<br> M.POINT 50점을
													적립해드립니다.
												</span>
											</p>
										</div>
									</div>

									<div class="movi_review_box">
											<div class="movi_review_score">
												<div class="starRev">
													<span class="starR on">1</span> <span class="starR">2</span>
													<span class="starR">3</span> <span class="starR">4</span> <span
														class="starR">5</span> <span class="starR">6</span> <span
														class="starR">7</span> <span class="starR">8</span> <span
														class="starR">9</span> <span class="starR">10</span>
												</div>
												<input type="hidden" name="starScore" value="1"> <input
													type="hidden" name="filmNum" id="filmNum"
													value="${movieDetailRate.filmNum}">
											</div>
											<div class="movi_review_comment">
												<textarea rows="3" cols="3" name="textarea"
													placeholder="평점 및 영화 관람평을 작성해주세요. 한글 110자/ 영문 220자 작성 가능합니다."
													id="textarea"></textarea>
											</div>
											<button type="submit" id="btnComment" class="btn_submit">관람평 작성</button>
									</div>
								</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<script>
	$(function() {
		var starScore = 1;
		$('.starRev span').click(function() {
			$(this).parent().children('span').removeClass('on');
			$(this).addClass('on').prevAll('span').addClass('on');
			starScore = $(this).text();
			return false;
		});

		var cloneDiv = $("#story_box").clone();
		$('#btn_detail').click(function() {
			$(this).addClass('on');
			$('#btn_review').removeClass('on');
			$('.review_section').removeClass('on');
			var filmNum = $("input[name='filmNum']").val();
			$("#story_box").empty();
			$("#story_box").append(cloneDiv);
			rowCount = 5;
		});
		var rowCount = 5;
		
		
		
		$('#btn_review').on('click', reviewBoard);
		
		$("#story_box").on('click', ".reviewMore", reviewBoard);
		
		function reviewBoard() {
			
			$("#story_box").empty();
			var filmNum = $("input[name='filmNum']").val();
			$('.review_section').addClass('on');
			$('#btn_detail').removeClass('on');

			$('#btn_review').addClass('on');


			$.ajax({url : "${cp}/movie/showMovieReviews.do?rowCount="+ rowCount,
					type : "get",
					dataType : "json",
					data : {"filmNum" : filmNum},
					success : function(reviewListVo) {
							
							$("#review_section").append(
							"<form action=''></form>");
							$(reviewListVo).each(function(i, review) {$("#story_box").append("<div class='box_div'></div>")

												$("#story_box").append("<span class='box_name'>"+ review.memName
												+ "</span>");
												
												$("#story_box").append("<img src='${cp}/resources/image/movieDetail/star_small.png'>");
												$("#story_box").append("<span class='box_mScore'>"
												+ review.mScore+ "</span>");
												$("#story_box").append("<div>"+ review.rContent+ "</div>");
												$("#story_box").append("<div>"+ showTime(review.mReviewDate)
												+ "</div>");
												//$("#story_box").append(
												//"<img src='${cp}/resources/image/movieDetail/star_small.png'>");
												rowCount = rowCount + 5;
												
											});

							$("#story_box").append("<button class='reviewMore'>더보기</button>");
							
						}
					
					});
			
		}

		function functionAjax(){
			var filmNum = $("#filmNum").val();
			var textarea=$("#textarea").val();

			var params=$("#frm").serialize();
	//		alert(params)
			$.ajax({
				url : "${cp}/movie/writeComment.do",
				dataType : "json",
				data : {
					"filmNum":filmNum,
					"mScore":starScore,
					"rContent":textarea,
					"rowCount":rowCount
					},
				success : function(data) {
					if(textarea=='null'){
						alert("관람평을 한 자이상 작성하세요");
					}
					///왜완돼
				//alert("1111111111111111111111"+data);
							//-1은 리뷰가 이미 작성 됐을때,/-2는 구매 안했을때, -3 인설트 실패.
					//alert(data[0]) 0번째는 -2가 담겨있음
						for(var i in data){
							if(data[i].mScore==-2){
								alert("관람 내역이 없습니다.");
							}else if(data[i].mScore== -1){
								alert("작성한 리뷰 내역이 존재합니다.");
							}else{
								alert("관람평 작성이 완료되었습니다.");
								//location.reload(true);
								break;
							}
						}
					}
				});
			}
		
		
				$('#btnComment').on('click',function(e){
					e.preventDefault();
					if('${empty memNum}'){
						location.href="${cp}/log/login.do";
						//functionAjax();
					}else{
						functionAjax();
					}
				});


		function showTime(data) {
			var regdate = new Date(data);
			var year = regdate.getFullYear();
			var day = regdate.getDay();
			var date = regdate.getDate();
			return year + "." + day + "." + date;
		}
	})//end
</script>