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
<div style="margin: 0px auto;disalign-items: center;width: 90%;height: 700px;display: flex;">
	<div>
		<form action="${cp }/buy/screen/insert.do" id="insert" method="post">
			<div>
				<h1>영화정보가 담겨있을꺼임..</h1>
			</div>
			<div>
				<h2>총 결제금액 : ${seatMoney }</h2>
				<input type="hidden" name="seatMoney" value="${seatMoney }">
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