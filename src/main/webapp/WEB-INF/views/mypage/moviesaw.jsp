<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<style>
	#inquiry_wrap{width:100%;position: relative;top: 37px;}
	#mypage_moviesaw_wrap{height: 100%;width: 100%;	}
	#my_movie_list li { list-style: none;width: 49%; display: inline-block; border: 1px solid #ccc; margin-bottom: 10px;}
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
	#mypageTit{		padding: 10px;	    font-size: 26px;	display: inline-block;}
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
	#mypage_moviesaw_title{
		height: 60px;
		width: 100%;
	}
	
</style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="inquiry_wrap" class="container">
	<%@include file="mypageInfo.jsp" %>
	<%@include file="mypage_top_menu.jsp" %>
	<div id="mypage_moviesaw_wrap">
		<div id="mypage_moviesaw_title" style="float: left;">
			<h4 id="mypageTit">내가 관람한 영화 <span id="movieCount">${movieCount }</span>편</h4>
			<div style="float: right; margin-top: 25px; margin-right: 15px;">
				<select id="selectYear">
					<option value='all'>전체</option>
					<c:forEach items="${list }" var="y">
						<c:if test="${yy != y.year }">
							<option value=${y.year } <c:if test="${y.year == syear }">selected  </c:if>>20${y.year }년</option>
						</c:if>
						<c:set var='yy' value='${y.year }'/>
					</c:forEach>
				</select>
			</div>
		</div>
		<br>
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
								<input type="button" value="관람평등록" data-toggle="modal" data-target="#reviewInsert${i.index }">
							</c:when>
							<c:otherwise>
								<input type="button" value="관람평수정" data-toggle="modal" data-target="#reviewUpdate${i.index }">
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
		       	 <h4 style="display: inline-block;" class="starScore">10</h4><span>점</span><br>
				  <c:forEach var="z" begin="1" end="${list.mScore }">
		       	  	<span class="starR on">${z }</span>
		       	  </c:forEach>
		       	  <c:if test="${list.mScore!=10 }">
			       	  <c:forEach var="j" begin="${list.mScore }" end="10">
						  <span class="starR">${j }</span>
			       	  </c:forEach>
		       	  </c:if>
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
		      	 <h4 style="display: inline-block;" class="starScore${i.index }">${list.mScore }</h4><span>점</span><br>
				  <c:forEach var="z" begin="1" end="${list.mScore }">
		       	  	<span class="starR on">${z }</span>
		       	  </c:forEach>
		       	  <c:if test="${list.mScore!=10 }">
			       	  <c:forEach var="j" begin="${list.mScore }" end="10">
						  <span class="starR">${j }</span>
			       	  </c:forEach>
		       	  </c:if>
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
		var index=0;
		$('.starRev span').click(function(){
			var starScore=$(this).text();
			$('.starScore').text(starScore);
		  $(this).parent().children('span').removeClass('on');
		  $(this).addClass('on').prevAll('span').addClass('on');
		  return false;
		});
		
		//리뷰 등록
		$('.btn_insert .btn').click(function(){
			location.reload(true);
			index=$(this).next().val();
			var mScore=$(".score").text();
			var rContent=$("#review_insert_content"+index).val();
			var filmnum=$("#review_insert_filmnum"+index).val();
			var chargenum=$("#review_insert_chargenum"+index).val();
			alert(mScore+","+rContent+","+filmnum+","+chargenum);
			$.ajax({
				url:"${cp}/mypage/reviewInsert.do",
				data : {"mScore":5,"rContent":rContent,"filmNum":filmnum,"chargeNum":chargenum},
				type: 'POST',
				dataType : 'JSON',
				success : function(data){
					console.log('등록 성공');
				},
				error: function(data){
					console.log('에러입니다');
				}
			});
		});
		//리뷰 수정
		$('.btn_update .btn').click(function(){
			location.reload(true);
			index=$(this).next().val();
			var mScore=$(".score").text();
			var rContent=$("#review_update_content"+index).val();
			var filmnum=$("#review_update_filmnum"+index).val();
			var chargenum=$("#review_update_chargenum"+index).val();
			alert(mScore+","+rContent+","+filmnum+","+chargenum);
// 			$.ajax({
// 				url:"${cp}/mypage/reviewUpdate.do",
// 				data : {"mScore":5,"rContent":rContent,"filmNum":filmnum,"chargeNum":chargenum},
// 				type: 'POST',
// 				dataType : 'JSON',
// 				success : function(data){
// 					console.log('수정 성공');
// 				},
// 				error: function(data){
// 					console.log('에러입니다');
// 				}
// 			});
		});
		
		$('#selectYear').change(function(){
			var syear=$(this).val();
			if(syear!='all'){
				location.href="${cp}/mypage/selectList.do?syear="+syear;
			}else{
				location.href="${cp}/mypage/moviesaw.do";
			}
// 			$.ajax({
// 				url:"${cp}/mypage/moviesaw.do",
// 				data : {"syear":syear},
// 				type: 'POST',
// 				dataType : 'JSON',
// 				success : function(data){
// 					alert('성공');
// 				},
// 				error: function(data){
// 					alert('에러');
// 				}
// 			});
		});
		
		
	});
	
	
	
</script>
</html>

