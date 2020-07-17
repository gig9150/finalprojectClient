<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<style>
	#inquiry_wrap{
		border: 1px solid gray;
		width: 50%;
		height: 100%;
		margin: auto;
	}
	#mypage_moviesaw_wrap{
		border: 1px solid red;
		height: 100%;
		width: 100%;
	}
	#my_movie_list{
		/* border: 1px solid blue; */
	}
	#my_movie_list li { list-style: none;width: 49%; display: inline-block; border: 1px solid pink;}
	#poster{
		display: inline-block;
		/* border: 3px solid orange; */
		float: left;
		padding: 10px;
		width: 210px;
	}
	#detail_info{
		display: inline-block;
		padding-top: 10px;
    	padding-bottom: 10px;
		/* border: 1px solid purple; */
		clear: both;
		width: 50%;
	}
	#poster img{
		/* border: 1px solid green; */
		border-radius: 10px;
		width: 184px;
		height: 262px;
	}
	#review_box{
		/* border: 1px solid red; */
		display: inline-block;
		width: 50%;
	}
	#review_box dd{
		/* border: 1px solid; */
		height: 90px;
	}
	#review_box dt{
		color: #FF7787;
	}
	#reviewBtn{
		border: 1px solid;
		border-radius: 6px;
		background-color:transparent;
	}
	#tit{
   		font-size: 22px;
	}
	#movieContent{
		padding: 10px;
	}
	#movieCount{
		color: #FF243E;
	    font-size: 21px;
	    font-family: 'Roboto';
	    text-decoration: underline;
	}
	#mypageTit{
		padding: 10px;
	    font-size: 26px;
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
		<c:forEach items="${list }" var="list">
			<li>
				<div id="poster">
					<img src="${cp }/resources/images/images/002.jpg" />
				</div>
				<div id="movieContent">
					<strong id="tit">${list.filmname }</strong><br>
					<div id="detail_info">
						<span id="txt">${list.brname }  ${list.theathername }</span><br>
						<span id="txt time">${list.mstarttime }</span><br>
						<span id="txt">관람 인원 2명</span><br>
					</div>
					<dl id="review_box">
						<dt>My Review</dt>
						<dd>${list.mreview }</dd>
					</dl>
					<div id="btn_box">
						<c:choose>
							<c:when test="${list.mreview == '관람평을 작성해보세요.'}">
								<input type="button" value="관람평등록" data-toggle="modal" data-target="#reviewAdd">
							</c:when>
							<c:otherwise>
								<input type="button" value="관람평수정" data-toggle="modal" data-target="#reviewUpdate">
							</c:otherwise>
						</c:choose>
						
						<!-- Modal -->
						  <div class="modal fade" id="reviewAdd" role="dialog">
						    <div class="modal-dialog">
						    
						      <!-- Modal content-->
						      <div class="modal-content">
						        <div class="modal-header">
						          <button type="button" class="close" data-dismiss="modal">&times;</button>
						          <h4 class="modal-title">관람평 등록</h4>
						        </div>
						        <div class="modal-body">
						          <p>Some text in the modal.</p>
						        </div>
						        <div class="modal-footer">
						          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						        </div>
						      </div>
						    </div>
						   </div>
						   
						 <!-- Modal -->
						   <div class="modal fade" id="reviewUpdate" role="dialog">
						    <div class="modal-dialog">
						    
						      <!-- Modal content-->
						      <div class="modal-content">
						        <div class="modal-header">
						          <button type="button" class="close" data-dismiss="modal">&times;</button>
						          <h4 class="modal-title">관람평 수정</h4>
						        </div>
						        <div class="modal-body">
						          <p>Some text in the modal.</p>
						        </div>
						        <div class="modal-footer">
						          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						        </div>
						      </div>
						    </div>
						   </div>
					</div>
				</div>
			</li>
		</c:forEach>
		</ul>
	</div>
</div>


</body>
<script type="text/javascript" src="${cp }/resources/js/jquery-3.5.1.js"></script>
<script type="text/javascript">
	$(function(){
		/* $("#reviewAdd").click(function(){
			alert("모달 띄울 예정");
		}); */
	});
</script>
</html>


















