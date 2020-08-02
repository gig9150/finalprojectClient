<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<%
    String name = "최성진 이건 세션에서 가져올꺼임";
    String email = "test@test.com";
    String phone = "이것도 세션";
    String address = "이것도 세션";
%>
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
.section2 {
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
	border-bottom: 1px solid #ccc !important;
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
	width: 438px;
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

<div style="margin: 0px auto;disalign-items: center;width: 90%;height: 700px;display: flex;">
	<div>
	<div>
	<div>
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
		</div>
	</div>
		<form action="${cp }/buy/screen/insert.do" id="insert" method="post">
			
			<div>
				<h2>총 결제금액 : ${seatMoney }</h2>
				<input type="hidden" name="seatMoney" value="${seatMoney }">
				<input type="hidden" name="mscheduleNum" value="${mscheduleNum }">
				<c:forEach var="num" items="${seatNum }">
					<input type="hidden" name="seatNum" value="${num }">
				</c:forEach>
				<span>좌석정보 : </span>
				<c:forEach var="name" items="${seatName }" varStatus="i">
					<span>${name }<c:if test="${not i.last }">,</c:if></span>
					<input type="hidden" name="seatName" value="${seatName }">
				</c:forEach>
			</div>
		</form>
		<div>
			<input type="button" value="좌석 다시선택하기" class="btn btn-success" id="btn1">	
			<input type="button" value="구매하기" class="btn btn-success" id="btn2">
		</div>
	</div>
</div>
<script>
	$("#btn1").on('click',function(){
		window.history.back();
	});
	
	$("#btn2").on('click',function(){
    	var totalPrice = '${seatMoney}';
    	var seatName = '${seatName}';
    	var seatNum = '${seatNum}';
    	var seatMoney = '${seatMoney}';
        var IMP = window.IMP;
        IMP.init('imp67313818');
        var msg;
        
        IMP.request_pay({
            pg : 'html5_inicis',
            pay_method : 'card',
            merchant_uid : 'merchant_' + new Date().getTime(),
            name : '영화 결제',
            amount : totalPrice,
            buyer_email : '<%=email%>',
            buyer_name : '<%=name%>',
            buyer_tel : '<%=phone%>',
            buyer_addr : '<%=address%>',
            buyer_postcode : '123-456',
        }, function(rsp) {
            //if ( rsp.success ) {
                jQuery.ajax({
                    url: "/payments/complete.do",
                    type: 'POST',
                    dataType: 'json',
                    contentType:"application/x-www-form-urlencoded;charset=utf-08",
                    data: {
                        imp_uid : rsp.imp_uid
                        //기타 필요한 데이터가 있으면 추가 전달
                    }
                }).done(function(data) {
                    if ( everythings_fine ) {
                        msg = '결제가 완료되었습니다.';
                        msg += '\n고유ID : ' + rsp.imp_uid;
                        msg += '\n상점 거래ID : ' + rsp.merchant_uid;
                        msg += '\결제 금액 : ' + rsp.paid_amount;
                        msg += '카드 승인번호 : ' + rsp.apply_num;
                        alert(msg);
                    } else { // 결제취소 쪽
                    	
                    }
                });
                //성공시 이동할 페이지 
           // } else {
                msg = '결제완료되었습니다.';
                //실패시 이동할 페이지
                
                alert(msg);
            //}
            $("#insert").submit();
        });
    });
</script>