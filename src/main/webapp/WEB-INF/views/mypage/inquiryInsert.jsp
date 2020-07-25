<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
	#inquiry_wrap{
		width: 50%;
		height: 100%;
		margin: auto;
		margin-bottom: 50px;
	}
	#mypage-infomation {
	    position: relative;
	    min-height: 36px;
	    padding-bottom: 10px;
	}
	.dot-list>li {
    	position: relative;
	    padding: 0 0 0 8px;
	}
	#mypage-infomation #myinquiry_btn {
	    position: absolute;
	    top: 0;
	    right: 0;
	    padding: 0;
	    margin: 0;
	    text-align: center;
	    line-height: 35px;
	}
	#myQnaBtn{
		display:inline-block;
		background-color: #503396;
		color: #fff;	
		width: 113px;
		height: 36px;
		padding: 0px 15px;
		margin: 0px 3px;
		text-decoration: none;
		border-radius: 5px;
		font-size: 15px;
	}
	.agree-box{
		border: 1px solid #d8d9db;
		border-radius: 10px;
	}
	dt{
		padding: 0 30px;
		height: 50px;
		border-bottom: 1px solid #d8d9db;
	}
	dd{
		padding: 30px;
	}
	#chk{
		width: 28px;
	    height: 15px;
	    margin-top: 20px;
	}
	.agree-box dl dt strong {
	    font-size: 1.2em;
	    font-weight: 700;
	    cursor: pointer;
	}
	.font-orange {
	    color: #e63e30!important;
	}
	.reset{
		margin-top: 10px;
		margin-bottom: 10px;
	}
	#inquiry_table_div{
		border-top: 1px solid;
		width: 100%;
	}
}
</style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<div id="inquiry_wrap">
	<div id="contents">
		<h2 class="tit">1:1 문의</h2>
		<div id="mypage-infomation">
			<ul class="dot-list">
				<li>문의하시기 전 FAQ를 확인하시면 궁금증을 더욱 빠르게 해결하실 수 있습니다. </li>
				<li>1:1 문의글 답변 운영시간 09:00 ~ 21:00</li>
			</ul>
			<div id="myinquiry_btn">
				<a href="#" class="button purple" id="myQnaBtn" title="나의 문의내역 페이지로 이동">나의 문의내역</a>
			</div>
		</div>
		
		<div class="agree-box">
			<dl>
				<dt>
					<span class="bg-chk">
						<input type="checkbox" id="chk">
						<label for="chk"><strong>개인정보 수집에 대한 동의</strong></label>
					</span>

					<span class="font-orange">[필수]</span>
				</dt>
				<dd>
					귀하께서 문의하신 다음의 내역은 법률에 의거 개인정보 수집·이용에 대한 본인동의가 필요한 항목입니다.<br><br>

					[개인정보의 수집 및 이용목적]<br>
					회사는 단체관람/대관 문의 내역의 확인, 요청사항 처리 또는 완료 시 원활한 의사소통 경로 확보를 위해 수집하고 있습니다.<br><br>

					[수집하는 개인정보의 항목]<br>
					이름, 연락처, 이메일 주소<br><br>

					[개인정보의 보유기간 및 이용기간]<br>
					문의 접수 ~ 처리 완료 후 6개월<br>
					(단, 관계법령의 규정에 의하여 보존 할 필요성이 있는 경우에는 관계 법령에 따라 보존)<br>
					자세한 내용은 '개인정보 처리방침'을 확인하시기 바랍니다.
				</dd>
			</dl>
		</div>
		<p class="reset">* 원활한 서비스 이용을 위한 최소한의 개인정보이므로 동의하지 않을 경우 서비스를 이용하실 수 없습니다</p>
		<p class="reset font-orange" style="text-align: right;">* 필수</p>
		
		<div id="inquiry_table_div">
			<table id="inquiry_table">
				<tr>
					<td>dd</td>
				</tr>
			</table>
		</div>	
	</div><!-- contents -->
</div><!-- wrap -->
