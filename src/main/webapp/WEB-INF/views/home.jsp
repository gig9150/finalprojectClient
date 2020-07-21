<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<section class="slider">
	<div class="container">
		<div class="slider-header">
			<h3>
				<u>박스 오피스</u>&nbsp;&nbsp;<small>box office</small>
			</h3>
		</div>
		<div class="flexslider">
			<div class="col-xs-6 col-md-3">
				<a href="#" class="thumbnail"><img
					src="${cp}/resources/images/1.png"></a>
				<div>
					<button type="button" class="btn btn-default home-movie-btn1">예매</button>
					<button type="button" class="btn btn-primary home-movie-btn2">상세정보</button>
				</div>
			</div>
			<div class="col-xs-6 col-md-3">
				<a href="#" class="thumbnail"> <img
					src="${cp}/resources/images/2.png"></a>
				<div>
					<button type="button" class="btn btn-default home-movie-btn1">예매</button>
					<button type="button" class="btn btn-primary home-movie-btn2">상세정보</button>
				</div>
			</div>
			<div class="col-xs-6 col-md-3">
				<a href="#" class="thumbnail"> <img
					src="${cp}/resources/images/3.png"></a>
				<div>
					<button type="button" class="btn btn-default home-movie-btn1">예매</button>
					<button type="button" class="btn btn-primary home-movie-btn2">상세정보</button>
				</div>
			</div>
			<div class="col-xs-6 col-md-3">
				<a href="#" class="thumbnail"> <img
					src="${cp}/resources/images/4.png"></a>
				<div>
					<button type="button" class="btn btn-default home-movie-btn1">예매</button>
					<button type="button" class="btn btn-primary home-movie-btn2">상세정보</button>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row movie-search-row">
			<div class="col-md-3">
				<div class="movie-search-row-div">
					<input type="text" placeholder="영화명을 입력해주세요">
					<button type="button">
						<span class="glyphicon glyphicon-search" aria-hidden="true">
						</span>
					</button>
				</div>
			</div>
			<div class="col-md-3">
				<div class="movie-search-row-div">
					<button type="button">
						<span class="glyphicon glyphicon-time" aria-hidden="true">
						</span>
					</button>
					<p>상영시간표</p>
				</div>
			</div>
			<div class="col-md-3">
				<div class="movie-search-row-div">
					<button type="button">
						<span class="glyphicon glyphicon-film" aria-hidden="true">
						</span>
					</button>
					<p>박스오피스</p>
				</div>
			</div>
			<div class="col-md-3">
				<div class="movie-search-row-div">
					<button type="button">
						<span class="glyphicon glyphicon-tags" aria-hidden="true">
						</span>
					</button>
					<p>빠른 예매</p>
				</div>
			</div>
		</div>
	</div>
</section>
<section>
	<h2>s</h2>
	<div class="container main-grid">
		<hr>
		<div class="row">
			<div class="col-sm-6" style="top:10px;">
				<div id="carousel-example-generic" class="carousel slide"
					data-ride="carousel">
					<!-- Indicators -->
					<ol class="carousel-indicators">
						<li data-target="#carousel-example-generic" data-slide-to="0"
							class="active"></li>
						<li data-target="#carousel-example-generic" data-slide-to="1"></li>
						<li data-target="#carousel-example-generic" data-slide-to="2"></li>
					</ol>

					<!-- Wrapper for slides -->
					<div class="carousel-inner" role="listbox">
						<div class="item active">
							<img src="${cp}/resources/images/1.png">
							<div class="carousel-caption">...</div>
						</div>
						<div class="item">
							<img src="${cp}/resources/images/1.png">
							<div class="carousel-caption">...</div>
						</div>
						...
					</div>

					<!-- Controls -->
					<a class="left carousel-control" href="#carousel-example-generic"
						role="button" data-slide="prev"> <span
						class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a> <a class="right carousel-control" href="#carousel-example-generic"
						role="button" data-slide="next"> <span
						class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>
				</div>
			</div>
			<div class="row col-sm-6">
				<div class="col-xs-6">
					<img src="http://placehold.it/300x205" alt=""
						class="img-responsive">
				</div>
				<div class="col-xs-6">
					<img src="http://placehold.it/300x205" alt=""
						class="img-responsive">
				</div>
				<div class="col-xs-6">
					<img src="http://placehold.it/300x205" alt=""
						class="img-responsive">
				</div>
				<div class="col-xs-6">
					<img src="http://placehold.it/300x205" alt=""
						class="img-responsive">
				</div>
			</div>
		</div>
		<div class="container">
			<div class="menu-link"><span class="glyphicon glyphicon-star" aria-hidden="true">
						</span><a>vip lounge</a></div>
			<div class="menu-link"><span class="glyphicon glyphicon-glass" aria-hidden="true">
						</span><a>멤버쉽</a></div>
			<div class="menu-link"><span class="glyphicon glyphicon-credit-card" aria-hidden="true">
						</span><a>할인카드안내</a></div>
			<div class="menu-link"><span class="glyphicon glyphicon-headphones" aria-hidden="true">
						</span><a>이벤트</a></div>
			<div class="menu-link"><span class="glyphicon glyphicon-inbox" aria-hidden="true">
						</span><a>스토어</a></div>
		</div>
		<div class="container">
		    <div class="row" style="margin-top:50px;">
		        <div class="col-md-3">
			        <p>
						<span style="display:block;">
							LIFE THEATER MEGABOX
						</span>
						<strong style="font-size: 30px">
							GRAND<br>OPENING
						</strong>
					</p>
				</div>
		        <div class="col-md-2" style="margin-right:20px;">
		        <img src="${cp}/resources/images/3.png" style="border:1px solid red;border-radius:50%"></div>
		        <div class="col-md-2" style="margin-right:20px;">
		        <img src="${cp}/resources/images/3.png" style="border:1px solid red;border-radius:50%"></div>
		        <div class="col-md-2" style="margin-right:20px;">
		        <img src="${cp}/resources/images/3.png" style="border:1px solid red;border-radius:50%"></div>
		        <div class="col-md-2" style="margin-right:20px;">
		        <img src="${cp}/resources/images/3.png" style="border:1px solid red;border-radius:50%"></div>
		    </div>
		</div>
	</div>
</section>
<section>
	<div class="container main-section3">
		<h1>dddd</h1>
	</div>
</section>



