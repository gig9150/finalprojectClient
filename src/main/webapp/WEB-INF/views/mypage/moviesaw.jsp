<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<style>
	#inquiry_wrap{width: 50%;height: 100%;	margin: auto;}
	#mypage_moviesaw_wrap{		height: 100%;		width: 100%;	}
	#my_movie_list li { list-style: none;width: 49%; display: inline-block; border: 1px solid pink;}
	#poster{		display: inline-block;		float: left;		padding: 10px;		width: 210px;	}
	#detail_info{		display: inline-block;		padding-top: 10px;    	padding-bottom: 10px;		clear: both;		width: 50%;	}
	#poster img{border-radius: 10px;		width: 184px;		height: 262px;	}
	#review_box{		display: inline-block;		width: 50%;	}
	#review_box dd{		height: 90px;	}
	#review_box dt{		color: #FF7787;	}
	.reviewBtn{		border: 1px solid;		border-radius: 10px;		background-color:transparent;	}
	#tit{   		font-size: 22px;	}
	#movieContent{		padding: 10px;	}
	#movieCount{		color: #FF243E;	    font-size: 21px;	    font-family: 'Roboto';	    text-decoration: underline;	}
	#mypageTit{		padding: 10px;	    font-size: 26px;	}
	.modal-header .modal-title{		text-align: center;		display: inline-block;	}
	.modal-header .cloas{		display: inline-block;		text-align: right;	}
	.starR{
	  background: url('http://miuu227.godohosting.com/images/icon/ico_review.png') no-repeat right 0;
	  background-size: auto 100%;
	  width: 30px;
	  height: 30px;
	  display: inline-block;
	  text-indent: -9999px;
	  cursor: pointer;
	}
	.starR.on{background-position:0 0;}
	.starRev{		text-align: center;		padding: 10px 0 15px;	}
	.modal-body{		text-align: center;	}
	.modal-body .review_content{
		width: 100%;
	    box-sizing: border-box;
	    border: 1px solid #DDD;
	    resize: none;
	    font-size: 2em;
	    border-radius: 4px;
	    padding: 13px 18px;
	}
	.modal-body #score{		margin-right: 5px;    	font-size: 38px;	}
	.modal-body #score span{		font-size: 17px;	}
	#modal-movie-tit{		font-size: 22px;	}
	
	/* 내 정보 */
	.mypage_top_infor {
	    position: relative;
	    margin: 0 auto 35px;
	    border-radius: 10px;
	    box-shadow: 0 3px 15px rgba(0, 0, 0, .1);
	    background-color: #FFF;
	    border: 1px solid red;
	    height: 355px;
	    width: 100%;
	}
	.mypage_box {
	    position: relative;
	    float: left;
	    width: 597px;
	    min-height: 355px;
	}
</style>
<link rel="stylesheet" href="${cp }/resources/css/mypage/mypage_top_menu.css" type="text/css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="inquiry_wrap">
	<div class="mypage_top_infor" id="mypage_top_infor">
		<div class="mypage_box">
			<h3 class="hidden">회원 등급 및 포인트</h3>
		</div>
	</div>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	<div id="mypage_top_menu">
		<ul>
			<li><a href="${cp }/mypage/payment.do"><span>결제내역</span></a></li>
			<li><a href="${cp }/mypage/cupon.do"><span>쿠폰함</span></a></li>
			<li><a href="${cp }/mypage/moviesaw.do"><span>내가 본 영화</span></a></li>
			<li><a href="${cp }/mypage/inquiry.do"><span>1:1문의</span></a></li>
			<li><a href="${cp }/mypage/memberInfo.do"><span>회원정보관리</span></a></li>
		</ul>
	</div>
	<div id="mypage_moviesaw_wrap">
		<div id="mypage_moviesaw_title">
			<h4 id="mypageTit">내가 관람한 영화 <span id="movieCount">${movieCount }</span>편</h4>
		</div>
		<ul id="my_movie_list">
		<c:forEach items="${list }" var="list" varStatus="i">
			<li>
				<div id="poster">
					<img src="${list.movieimgurl }" />
				</div>
				<div id="movieContent">
					<strong id="tit">${list.filmname }</strong><br>
					<div id="detail_info">
						<span id="txt">${list.brname }  ${list.theathername }</span><br>
						<span id="txt time">${list.mstarttime }</span><br>
						<span id="txt">관람 인원 ${list.usercount }명</span><br>
					</div>
					<dl id="review_box">
						<dt>My Review</dt>
						<dd>${list.mreview }</dd>
					</dl>
					<div id="btn_box">
						<c:choose>
							<c:when test="${list.mreview == '관람평을 작성해보세요.'}">
								<input type="button" value="관람평등록" data-toggle="modal" data-target="#reviewInsert${i.index }" class="reviewBtn">
							</c:when>
							<c:otherwise>
								<input type="button" value="관람평수정" data-toggle="modal" data-target="#reviewUpdate${i.index }" class="#reviewBtn">
							</c:otherwise>
						</c:choose>
					</div>
				</div>
			</li>
			
			
		<!-- Modal -->
		<!-- 리뷰 등록 -->
		<div class="modal fade" id="reviewInsert${i.index }" role="dialog">
			<input type="text" value="${list.filmnum }" id="review_insert_filmnum${i.index }">
			<input type="text" value="${list.chargenum }" id="review_insert_chargenum${i.index }">
		  <div class="modal-dialog">
						
		    <!-- Modal content-->
		    <div class="modal-content">
		      <div class="modal-header">
		        <h4 class="modal-title">관람평 등록</h4>
		        <button type="button" class="close" data-dismiss="modal">&times;</button>
		      </div>
		      <div class="modal-body">
		      	<strong id="modal-movie-tit">${list.filmname }</strong>
		       	<div class="starRev">
		      		 <h4 id="score">10<span></span></h4>
				  <span class="starR on">1</span>
				  <span class="starR on">2</span>
				  <span class="starR on">3</span>
				  <span class="starR on">4</span>
				  <span class="starR on">5</span>
				  <span class="starR on">6</span>
				  <span class="starR on">7</span>
				  <span class="starR on">8</span>
				  <span class="starR on">9</span>
				  <span class="starR on">10</span>
				</div>
		      	<textarea rows="5" cols="20" class="review_content" id="review_insert_content${i.index }" placeholder="평점 및 영화 리뷰를 작성해주세요."></textarea>
		      </div>
		      <div class="modal-footer">
		      	<div class="btn_insert">
			        <button type="button" class="btn btn-default" data-dismiss="modal">확인</button>
			        <input type="hidden" value="${i.index }">
			        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
		        </div>
		      </div>
		    </div>
		  </div>
		  
		  
		
		
		 </div>
		 <!-- //////////////////////////////////////////////////////////////////////////////////  -->
		<!-- Modal -->
		<!-- 리뷰 수정 -->
		<div class="modal fade" id="reviewUpdate${i.index }" role="dialog">
			<input type="text" value="${list.filmnum }" id="review_update_filmnum${i.index }">
			<input type="text" value="${list.chargenum }" id="review_update_chargenum${i.index }">
		 <div class="modal-dialog">
		   <!-- Modal content-->
		   <div class="modal-content">
		     <div class="modal-header">
		       <button type="button" class="close" data-dismiss="modal">&times;</button>
		       <h4 class="modal-title">관람평 수정</h4>
		     </div>
		     <div class="modal-body">
		     	<strong id="modal-movie-tit">${list.filmname }</strong>
		      	<div class="starRev">
		     		 <h4 id="score">10<span></span></h4>
			  <span class="starR on">1</span>
			  <span class="starR on">2</span>
			  <span class="starR on">3</span>
			  <span class="starR on">4</span>
			  <span class="starR on">5</span>
			  <span class="starR on">6</span>
			  <span class="starR on">7</span>
			  <span class="starR on">8</span>
			  <span class="starR on">9</span>
			  <span class="starR on">10</span>
			</div>
		     	<textarea rows="5" cols="20" class="review_content" id="review_update_content${i.index }">${list.mreview }</textarea>
		     </div>
		     <div class="modal-footer">
		     	<div class="btn_update">
			       <button type="button" class="btn btn-default" data-dismiss="modal">확인</button>
			       <input type="hidden" value="${i.index }">
			       <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
		       </div>
		     </div>
		   </div>
		 </div>
		</div>
		<!-- //////////////////////////////////////////////////////////////////////////////////  -->
			
		</c:forEach>
		</ul>
	</div>
</div>



</body>
<script type="text/javascript" src="${cp }/resources/js/jquery-3.5.1.js"></script>
<script type="text/javascript">
	$(function(){
		$('.starRev span').click(function(){
		  $(this).parent().children('span').removeClass('on');
		  $(this).addClass('on').prevAll('span').addClass('on');
		  $("#score").text($(this).text());
		  return false;
		});
		
		//리뷰 등록
		$('.btn_insert .btn').click(function(){
			var index=$(this).next().val();
			var mScore=$("#score").text();
			var rContent=$("#review_insert_content"+index).val();
			var filmnum=$("#review_insert_filmnum"+index).val();
			var chargenum=$("#review_insert_chargenum"+index).val();
			$.ajax({
				url:"${cp}/mypage/reviewInsert.do",
				data : {"mScore":mScore,"rContent":rContent,"filmNum":filmnum,"chargeNum":chargenum},
				contentType: "application/x-www-form-urlencoded; charset=UTF-8",
				method: 'POST',
				dataType : 'JSON',
				success : function(data){
					alert('관람평이 저장되었습니다.');
				}
			});
		});
		//리뷰 수정
		$('.btn_update .btn').click(function(){
			var index=$(this).next().val();
			var mScore=$("#score").text();
			var rContent=$("#review_update_content"+index).val();
			var filmnum=$("#review_update_filmnum"+index).val();
			var chargenum=$("#review_update_chargenum"+index).val();
			alert(mScore+","+rContent+","+filmnum+","+chargenum);
			$.ajax({
				url:"${cp}/mypage/reviewUpdate.do",
				data : {"mScore":mScore,"rContent":rContent,"filmNum":filmnum,"chargeNum":chargenum},
				contentType: "application/x-www-form-urlencoded; charset=UTF-8",
				method: 'POST',
				dataType : 'JSON',
				success : function(data){
					
				}
			});
		});
		
// 		$('.btn_insert .btn').on('click',function(){
// 			$('#score').text('');
// 			$("#review_Update").val('');
// 			$("#review_insert").val('');
// 			console.log('클래스 지정 접근');
// 		});
		
	});
	
	
	
</script>
</html>


















