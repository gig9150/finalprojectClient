<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
#room {
	width: 100%;
	height: 93%;
}

#roomMain {
	width: 70%;
	height: 100%;
	float: left;
	border: 1px solid red;
	float: left;
	margin: auto;
}

#seatMain {
	width: 80%;
	height: 100%;
	position: relative;
	margin: auto;
}

#roomCreate {
	width: 30%;
	height: 100%;
	float: left;
	border: 1px solid blue;
}

.seat {
	width: 45px;
	height: 45px;
	position: absolute;
}

#content_div {
	width: 100%;
	height: 1000px;
	border: 1px blue;
}
ul {
    list-style:none;
    margin:0;
    padding:0;
}

li {
    margin: 0 0 0 0;
    padding: 0 0 0 0;
    border : 0;
    float: left;
}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<div id="content_div">
	<div id="room">
		<h1 style="text-align: center;">영화예매</h1>
		<div id="roomMain">
			<div style="text-align: center;">
				<img src="${cp }/resources/images/join_logo_3.png"
					style="width: 80%; height: 150px;">
			</div>
			<form id="sub"
				action="${cp }/room/seat/createUpdate.do?theatherNum=${theatherNum}"
				method="post">
				<div>
				<div id="seatMain"></div>
				</div>
			</form>
		</div>
		<div id="roomCreate">
			<div id="createDiv">
				<div class="btn-group">
					<h2>인원선택</h2>
					<ul>
					<c:forEach var="i" begin="0" end="7">
						<li><button type="button" class="btns" value="${i }" id="btns${i }">${i }</button></li>
					</c:forEach>
					</ul>
					<input type="text" id="checkNum">
					<div>
						<span id="seatName" style="font-size: 40px">좌석선택</span>
					</div>
					<div>
						<span style="font-size: 34px;">할인율</span>
						<span id="sale" style="font-size: 34px;margin-left: 30px;">-</span><br>
						<span style="font-size: 34px;">총금액</span>
						<span id="money" style="font-size: 34px;margin-left: 30px;">-</span><br>
					</div>
					<div id="formData">
					</div>
				</div>
				<button type="button" id="btn2" style="border-bottom:5%;" class="btn btn-primary btn-block">구매하기</button>
			</div>
		</div>
	</div>
</div>
<script>
	var buyMoney=11000;//나중에 세션으로 해야함....
	var totalMoney=0;
	function getList(){
		var seatMain = $("#seatMain");
		seatMain.empty();
		<c:forEach var="vo" items="${list }">
			var seatNum = '${vo.seatNum}';
			var seatX = '${vo.seatX}';
			var seatY = '${vo.seatY}';
			var seatSale = '${vo.seatSale}';
			var seatName = '${vo.seatName}';
			var btn = $("<input type='button' class='seat' disabled='disabled' value='"+seatName+"'></input>");
			if (seatSale == '80') {
				btn.css("backgroundColor", "blue");
			} else if (seatSale == '90') {
				btn.css("backgroundColor", "red");
			} else if (seatSale == '110') {
				btn.css("backgroundColor", "pink");
			}
			btn.offset({
				top : seatY,
				left : seatX
			});
			seatMain.append(btn);
			btn
					.after("<input type='hidden' name='seatNum' value='"+seatNum+"'></input>");
			btn
					.after("<input type='hidden' name='seatSale' value='"+seatSale+"'></input>");
		</c:forEach>
	}
	getList();
	var str=[];
	var seatNum=[];
	var sSale=[];
	$("#seatMain").on("click", ".seat", function() {
		var checkVal=$(this).val();
		var seatPk=$(this).next().next().val();
		var seatSale=$(this).next().val();
		var bl=true;		
		if(users>0){
			for(var j=0;j<str.length;j++){
				if(str[j]==checkVal){
					if (seatSale == '80') {
						$(this).css("background-color", "blue");
					} else if (seatSale == '90') {
						$(this).css("background-color", "red");
					} else if (seatSale == '110') {
						$(this).css("background-color", "pink");
					} else if(seatSale == '100'){
						$(this).css("background-color", "rgb(239, 239, 239)");
					}
					users = users+1;
					$("#checkNum").val(users);
					var index= str.indexOf(checkVal);
					if(index>-1){
						str.splice(index, 1);
						seatNum.splice(index,1);
						sSale.splice(index,1);
						$("#seatName").text(str);
						$("#sale").text(sSale);
						$("#money").text("-");
					}
					alert("break걸림...");
					bl=false;
					break;
				}
			}
			if(bl){
				$(this).css("background-color", "yellow");
				users = users-1;
				$("#checkNum").val(users);
				str.push($(this).val());
				seatNum.push(seatPk);
				sSale.push(seatSale);
				$("#seatName").text(str);
				var sum=0;
				for(var i=0;i<sSale.length;i++){
					sum += parseInt(sSale[i]);
				}
				totalMoney+= (seatSale/100)*buyMoney;
				totalMoney=parseInt(totalMoney);
				var arg=Math.ceil(sum/sSale.length);
				$("#sale").text(arg);
				$("#money").text(totalMoney);
			}
		}else{
			alert("총할인율.."+seatNum);
		}
	});

	$("#btn2").click(function() {
		$("#sub").submit();
	});

	var users=0;
	$("#btns0").css("backgroundColor","#333333");
	
	var bl2=true;
	$(".btn-group").on("click","button",function(){
		if(bl2){
			$(".seat").prop("disabled",false);
			users=$(this).val();
			$("#checkNum").val(users);
			$(".btns").css("backgroundColor","rgb(0, 174, 255)");
			$(this).css("backgroundColor","#333333");
			bl2=false;
		}else{
			str.splice(0,str.length);
			$("#seatName").text(str);
			$("#sale").text('-');
			$("#money").text('-');
			totalMoney=0;
			getList();
			bl2=true;
		}
	});
	
	//굳굳.. 예매된 좌석은 블록..
	$(".seat").each(function(i,item){
		console.log($(item).val());
	});
</script>