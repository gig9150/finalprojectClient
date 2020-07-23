<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>


<div class="container store-controller" role="tabpanel">
	<h1>스토어</h1>
	<ul class="nav nav-tabs store-nav" role="tablist">
		<li role="presentation" class="active"><a href="#home"
			aria-controls="home" role="tab" data-toggle="tab">새로운 상품 </a></li>
		<li role="presentation"><a href="#profile"
			aria-controls="profile" role="tab" data-toggle="tab">패키지</a></li>
		<li role="presentation"><a href="#messages"
			aria-controls="messages" role="tab" data-toggle="tab">메가 티켓</a></li>
		<li role="presentation"><a href="#settings"
			aria-controls="settings" role="tab" data-toggle="tab">팝콘/음료/굿즈</a></li>
	</ul>

	<div class="tab-content store-div">
		<div role="tabpanel" class="tab-pane active" id="home">
			<div class="container">
				<div class="row store-div-thumbnail">
					<img src="${cp}/resources/logo/썸네일12.jpg" class="img-rounded">
					<img src="${cp}/resources/logo/썸네일2.jpg" class="img-rounded">
				</div>
			</div>
			<h2>메가티켓</h2>
			<div class="row">
				<a href="${cp}">
					<div class="col-sm-6 col-md-3">
						<div class="thumbnail">
							<img src="${cp}/resources/logo/메가티켓1.jpg" alt="...">
							<div class="caption">
								<h3>러브콤보패키지</h3>
								<p>2D 일반관람권 2매 + 러브콤보 <br>[팝콘(L)1 + 탄산음료(R)2]</p>
								<span><strong>100,000원</strong></span>
							</div>
						</div>
					</div>
				</a>
				<a href="${cp}">
					<div class="col-sm-6 col-md-3">
						<div class="thumbnail">
							<img src="${cp}/resources/logo/메가티켓2.jpg" alt="...">
							<div class="caption">
								<h3>일반관람권</h3>
								<p>일반 관람권</p>
								<span><strong>100,000원</strong></span>
							</div>
						</div>
					</div>
				</a>
				<a href="${cp}">
					<div class="col-sm-6 col-md-3">
						<div class="thumbnail">
							<img src="${cp}/resources/logo/메가티켓3.jpg" alt="...">
							<div class="caption">
								<h3>더 부티크 스위트 관람권</h3>
								<p>더 부티크 스위트  관람권</p>
								<span><strong>100,000원</strong></span>
							</div>
						</div>
					</div>
				</a>
				<a href="${cp}">
					<div class="col-sm-6 col-md-3">
						<div class="thumbnail">
							<img src="${cp}/resources/logo/메가티켓4.png" alt="...">
							<div class="caption">
								<h3>돌비패스 패키지</h3>
								<p>돌비시네마 5회 이용권 + 개관 기념 배지</p>
								<span><strong>100,000원</strong></span>
							</div>
						</div>
					</div>
				</a>
			</div>
			<h2>팝콘/음료/굿즈</h2>
			<div class="row">
				<a href="${cp}">
					<div class="col-sm-6 col-md-3">
						<div class="thumbnail">
							<img src="${cp}/resources/logo/팝콘1.png" alt="...">
							<div class="caption">
								<h3>즉석구이콤보</h3>
								<p>팝콘(R) 1 + 탄산음료(R) 2 + <br>즉석구이오징어 몸or다리 1</p>
								<span><strong>100,000원</strong></span>
							</div>
						</div>
					</div>
				</a>
				<a href="${cp}">
					<div class="col-sm-6 col-md-3">
						<div class="thumbnail">
							<img src="${cp}/resources/logo/팝콘2.png" alt="...">
							<div class="caption">
								<h3>반반에이드콤보</h3>
								<p>반반팝콘(L) 1 + 에이드 2</p>
								<span><strong>100,000원</strong></span>
							</div>
						</div>
					</div>
				</a>
				<a href="${cp}">
					<div class="col-sm-6 col-md-3">
						<div class="thumbnail">
							<img src="${cp}/resources/logo/팝콘3.png" alt="...">
							<div class="caption">
								<h3>더블콤보</h3>
								<p>팝콘(R) 2 + 탄산음료(R) 2</p>
								<span><strong>100,000원</strong></span>
							</div>
						</div>
					</div>
				</a>
			</div>
		</div>
			<div role="tabpanel" class="tab-pane" id="profile">2</div>
			<div role="tabpanel" class="tab-pane" id="messages">3</div>
			<div role="tabpanel" class="tab-pane" id="settings">4</div>
	</div>