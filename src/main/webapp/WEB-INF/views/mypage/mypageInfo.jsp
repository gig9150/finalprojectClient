<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
/* 내 정보 */
	.mypage_top_infor {
	    position: relative;
	    margin: 0 auto 35px;
	    border-radius: 10px;
	    box-shadow: 0 3px 15px rgba(0, 0, 0, .1);
	    background-color: #FFF;
	    height: 355px;
	    width: 100%;
	}
	.mypage_top_infor .top {
	    position: relative;
	    height: 198px;
	    padding: 30px 30px 0 0;
	    background-color: #f6f7f8;
	}
	
	.mypage_top_infor .bottom {
	    overflow: hidden;
	    height: calc(100% - 198px);
	    padding: 26px 30px 29px 30px;
	    background-color: #eaebed;
	    border-top: 1px solid #ccc;
	}
	
	.mypage_top_infor .top .photo {
	    float: left;
	    width: 200px;
	    padding: 20px 0 0 60px;
	}
	
	.mypage_top_infor .top .photo .wrap {
	    position: relative;
	    width: 93px;
	    margin: 0;
	    padding: 0 0 7px 0;
	}
	
	.mypage_top_infor .top .photo .wrap .img {
	    overflow: hidden;
	    display: block;
	    width: 93px;
	    height: 93px;
	    border-radius: 93px;
	    margin: 0;
	    padding: 0;
	    border: 0;
	    font-size: 0;
	    line-height: 0;
	    background-color: transparent;
	    box-shadow: 0 5px 5px 0 rgba(45,45,45,.2);
	}
	
	.photo .wrap .img img {
	    width: 100%;
	    height: 100%;
	    border-radius: 93px;
	}
	
	.mypage_top_infor .top .grade {
	    float: left;
	    padding-top: 20px;
	}
	
	.mypage_top_infor .top .grade .name {
	    font-size: 1.8666em;
	    line-height: 1.3;
	    color: #222;
	}
	
	.mypage_top_infor .top .grade .link a {
	    margin-right: 10px;
	    color: #666;
	}
	
	
	
	/* bottom */
	.mypage_top_infor .bottom .point {
	    float: left;
	    width: 280px;
	    min-height: 116px;
	    border-right: 1px solid #ccc;
	}
	.mypage_top_infor .bottom .point .tit-area .tit {
	    font-size: 1.2em;
	    color: #222;
	}
	
	.mypage_top_infor .bottom .point .tit-area {
	    padding-right: 30px;
	}
	.mypage_top_infor .bottom .point .cont-area .total .now {
	    overflow: hidden;
	    display: block;
	    float: left;
	    width: 140px;
	    height: 44px;
	    line-height: 48px;
	    color: #339eb2;
	    font-weight: 400;
	    font-size: 1.8em;
	    vertical-align: middle;
	    letter-spacing: -1px;
	}
	
	
	.mypage_top_infor .bottom .cupon {
	    float: left;
	    width: 280px;
	    min-height: 116px;
	    margin-left: 20px;
	}
	
	.mypage_top_infor .bottom .cupon .cont-area .tit{
		font-size: 1.2em;
		color: #222;
	}
	
	
	.mypage_top_infor .bottom .ddd {
	    float: left;
	    width: 280px;
	    min-height: 116px;
	    border-right: 1px solid #ccc;
	    margin-left: 20px;
	}
	
	.mypage_top_infor .bottom .cupon .cont-area .tit{
		font-size: 1.2em;
		color: #222;
	}
</style>
</head>
<body>
	<div class="mypage_top_infor" id="mypage_top_infor">
		<div class="top">
			<div class="photo" id="myPhoto">
				<div class="wrap">
					<div class="img">
						<img src="${cp }/resources/images/images/001.jpg">
					</div>
				</div>
			</div>
			<div class="grade">
				<p class="name">${memName }님은<br>${grade }입니다.</p>
				<div class="link">
					<a href="${cp }/log/memuser.do" title="개인정보수정 페이지로 이동">개인정보수정 > <i class="iconset ico-arr-right-reverse"></i></a>
					<a href="#" title="개인정보수정 페이지로 이동">로그아웃  ><i class="iconset ico-arr-right-reverse"></i></a>
				</div>
			</div>
		</div>
		<div class="bottom">
			<div class="point" id="myPoint">
				
				<div class="tit-area">
					<p class="tit">총 보유 포인트</p>
				</div>
	
				<div class="cont-area">
					<div class="total">
						<p class="now">0 P (세션)</p>
					</div>
				</div>
				
			</div>
			
			<div class="ddd">
				<div class="cont-area">
					<p class="tit">선호극장</p>
				</div>
				
				<div class="cont-area">
					<div class="total">
						<p class="tit">선호극장을 설정하세요.</p>
					</div>
				</div>
			</div>
			
			<div class="cupon">
				<div class="cont-area">
					<p class="tit">관람권 / 쿠폰함</p>
				</div>
				
				<div class="cont-area">
					<div class="total">
						<a href="${cp }/mypage/cupon.do"><img src="${cp }/resources/images/mypage/coupon_icon.png" style="width: 70px; height: 70px;"></a>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>