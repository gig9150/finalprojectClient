<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<section class="slider">
	<div class="container">
		<div class="slider-header">
			<h2>
				박스 오피스&nbsp;<small>box office</small>
			</h2>
		</div>
		<div class="flexslider">
			<c:forEach var="map" items="${list}" varStatus="status">
				<div class="col-xs-6 col-md-3">
					<a class="thumbnail"> <img src="${map.MOVIEIMGURL}"
						data-toggle="modal" class="modaldata" data-target="#foo${status.count}"></a>
					<div>
						<button type="button" class="btn btn-default home-movie-btn1">
							<span class="glyphicon glyphicon-heart"></span>&nbsp;<a>${map.VG}</a>
						</button>
						<button type="button" class="btn btn-primary home-movie-btn2">예매</button>
					</div>
				</div>
				<div class="modal fade" id="foo${status.count}">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
						<div class="modal-body">${map.MOVIEURL}</div>
						<div class="modal-footer">${map.FILMSTORY}</div>
						</div>
					</div>
				</div>
			</c:forEach>
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
	<div class="container main-grid">
		<h2>혜택</h2>
		<hr>
		<div class="row">
			<div class="col-sm-4" style="top: 10px;">
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
			<div class="row col-sm-8">
				<div class="col-xs-3">
					<img src="${cp}/resources/logo/grid1.jpg" alt=""
						class="img-responsive">
				</div>
				<div class="col-xs-3">
					<img src="${cp}/resources/logo/grid2.jpg" alt=""
						class="img-responsive">
				</div>
				<div class="col-xs-6">
					<img src="${cp}/resources/logo/grid3.jpg" alt=""
						class="img-responsive">
				</div>
				<div class="col-xs-8">
					<img src="${cp}/resources/logo/grid5.jpg" alt=""
						class="img-responsive">
				</div>
				<div class="col-xs-4">
					<img src="${cp}/resources/logo/grid4.jpg" alt=""
						class="img-responsive">
				</div>
			</div>
		</div>
		<div class="container">
			<div class="menu-link">
				<span class="glyphicon glyphicon-star" aria-hidden="true"> </span><a>vip
					lounge</a>
			</div>
			<div class="menu-link">
				<span class="glyphicon glyphicon-glass" aria-hidden="true"> </span><a>멤버쉽</a>
			</div>
			<div class="menu-link">
				<span class="glyphicon glyphicon-credit-card" aria-hidden="true">
				</span><a>할인카드안내</a>
			</div>
			<div class="menu-link">
				<span class="glyphicon glyphicon-headphones" aria-hidden="true">
				</span><a>이벤트</a>
			</div>
			<div class="menu-link">
				<span class="glyphicon glyphicon-inbox" aria-hidden="true"> </span><a>스토어</a>
			</div>
		</div>
		<hr>
		<div class="container">
			<div class="row" style="margin-top: 90px; color: #ffffff">
				<div class="col-md-3">
					<p>
						<span style="display: block;"> LIFE THEATER MEGABOX </span> <strong
							style="font-size: 30px"> GRAND<br>OPENING
						</strong>
					</p>
				</div>
				<!-- for문돌려서 3개출력  -->
				<div class="col-md-2 new-branch-info">
					<a>
						<p>
							<span>부산/창원/서울<br>2020/06/24
							</span> <strong>창원</strong>
						</p> <img src="${cp}/resources/logo/MovieTheaters.jpg">
					</a>
				</div>
				<div class="col-md-2 new-branch-info">
					<a>
						<p>
							<span>부산/창원/서울<br>2020/06/24
							</span> <strong>창원</strong>
						</p> <img src="${cp}/resources/logo/MovieTheaters.jpg">
					</a>
				</div>
				<div class="col-md-2 new-branch-info">
					<a>
						<p>
							<span>부산/창원/서울<br>2020/06/24
							</span> <strong>창원</strong>
						</p> <img src="${cp}/resources/logo/MovieTheaters.jpg">
					</a>
				</div>
			</div>
		</div>
	</div>
</section>
<section>
	<div class="container main-section3">
		<h2>영화평</h2>
		<div class="row">
			<div class="col-lg-4">
				<img src="${cp}/resources/images/1.png">
				<div>
					<button class="section3-button-one">상세정보</button>
					<button class="section3-button-two">예매하러가기</button>
				</div>
				<ul>
					<li><img src="${cp}/resources/images/1.png"></li>
					<li><img src="${cp}/resources/images/2.png"></li>
				</ul>
			</div>
			<div class="col-lg-8">
				<h3 class="text-center">Zigzag Timeline Layout (and Cats)</h3>
				<ul class="timeline">
					<li>
						<div class="timeline-image">
							<img class="img-circle img-responsive"
								src="http://lorempixel.com/250/250/cats/1" alt="">
						</div>
						<div class="timeline-panel">
							<div class="timeline-heading">
								<h4>Step One</h4>
								<h4 class="subheading">Subtitle</h4>
							</div>
							<div class="timeline-body">
								<p class="text-muted">Lorem ipsum dolor sit amet,
									consectetur adipisicing elit, sed do eiusmod tempor incididunt
									ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis
									nostrud exercitation ullamco laboris nisi ut aliquip ex ea
									commodo consequat.</p>
							</div>
						</div>
						<div class="line"></div>
					</li>
					<li class="timeline-inverted">
						<div class="timeline-image">
							<img class="img-circle img-responsive"
								src="http://lorempixel.com/250/250/cats/2" alt="">
						</div>
						<div class="timeline-panel">
							<div class="timeline-heading">
								<h4>Step Two</h4>
								<h4 class="subheading">Subtitle</h4>
							</div>
							<div class="timeline-body">
								<p class="text-muted">Lorem ipsum dolor sit amet,
									consectetur adipisicing elit, sed do eiusmod tempor incididunt
									ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis
									nostrud exercitation ullamco laboris nisi ut aliquip ex ea
									commodo consequat.</p>
							</div>
						</div>
						<div class="line"></div>
					</li>


					<li>
						<div class="timeline-image">
							<img class="img-circle img-responsive"
								src="http://lorempixel.com/250/250/cats/5" alt="">
						</div>
						<div class="timeline-panel">
							<div class="timeline-heading">
								<h4>Bonus Step</h4>
								<h4 class="subheading">Subtitle</h4>
							</div>
							<div class="timeline-body">
								<p class="text-muted">Lorem ipsum dolor sit amet,
									consectetur adipisicing elit, sed do eiusmod tempor incididunt
									ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis
									nostrud exercitation ullamco laboris nisi ut aliquip ex ea
									commodo consequat.</p>
							</div>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</div>
</section>
<section>
	<div class="container main-section4"></div>
</section>



