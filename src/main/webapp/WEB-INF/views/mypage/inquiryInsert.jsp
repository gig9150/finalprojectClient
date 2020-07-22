<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	.tbl_info_txt{
		padding: 0 10px;
	    line-height: 30px;
	    border-top: 1px solid #b8b6aa;
	    background-color: #edebe1;
	    text-align: right;
	}
	.desc_miso{
		background-image: url("${cp}/resources/images/mypage/desc_miso.png");
		background-repeat: no-repeat;
		background-color: #f6f1dc;
		margin: 24px 0 0 0;
    	padding: 0 0 0 118px;
	}
	.check_info td{
		padding: 15px 0 60px 0;
	}
	.tbl_notice_list {
	    border-top: solid 1px #d6d4ca;
	    border-bottom: solid 1px #b8b6aa;
	}
	tbody, tr{
	    font-size: 100%;
	    margin: 0;
	    padding: 0;
	    border: 0;
	    vertical-align: baseline;
	    word-break: break-all;
	}
	.desc_txt1 {
	    color: #000;
	    font-weight: 500;
	    font-size: 13px;
	    padding: 14px 0 4px 0;
	}
	.desc_txt2 {
	    font-size: 13px;
	    color: #7f7b6b;
	    line-height: 1.4;
	    font-weight: 400;
	}
	.tbl_notice_list.tbl_left .check_info td {
	    padding: 15px 0 60px 0;
	}
	
	.email_list_area .box-btn {
	    margin-top: 30px;
	}
	.tbl_notice_list.tbl_left th {
	    padding: 15px 0px 15px 13px;
	    border-top: 1px solid #d6d4ca;
	    text-align: left;
	    font-weight: 300;
	}
	.tbl_notice_list.tbl_left tbody td {
	    padding: 15px 5px;
	    text-align: left;
	}
	.tbl_notice_list.tbl_left tbody th {
    line-height: 27px;
    vertical-align: top;
}
.tbl_notice_list.tbl_left tbody td {
    padding: 15px 5px;
    text-align: left;
}
.email_list_area .box-btn.qna_email {
    overflow: hidden;
    clear: both;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${cp }/resources/css/mypage/mypage_top_menu.css" type="text/css">
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
	<div class="email_list_area">
		<div class="customer_top">
			<h2>이메일 문의</h2>
			<p>자주찾는 질문에서 원하는 답변을 찾지 못하셨군요<br>
			불편사항이나 문의사항을 남겨주시면 최대한 신속하게 답변 드리겠습니다.</p>
		</div>
		<div>
			<p class="tbl_info_txt">체크(<em><img src="http://img.cgv.co.kr/R2014/images/common/ico/ico_redstar.png" alt="필수"></em>)된 항목은 필수 입력 사항입니다.</p>
			<table class="tbl_notice_list tbl_left">
				<tbody>
					<tr>
						<th>이름</th>
						<td colspan="3">${vo.memName }</td>
					</tr>
					<tr>
						<th>휴대전화</th>
						<td>${vo.memPhone }</td>
						<th>이메일</th>
						<td>${vo.email }</td>
					</tr>
					<tr class="check_info">
                        <td colspan="4">
                            <div>
                                <strong>※&nbsp;&nbsp;문의에 대한 빠른 답변을 위해&nbsp;회원 가입 시 입력하신 연락처를 확인해주세요.</strong>
                                <a href="#" id="A1" class="round gray on" title="수정" target="_blank"><span>수정</span></a>
                            </div>
                            <div class="desc_miso">
                                <p class="desc_txt1">고객님의 문의에 답변하는 직원은 <em>고객 여러분의 가족 중 한 사람</em>일 수 있습니다.</p>
                                <p class="desc_txt2">CJ는 고객의 언어폭력(비하, 욕설, 반말, 성희롱 등)으로부터 고객상담직원을 보호하기 위해<br>관련 법에 따라 수사기관에 필요한 조치를요구할 수 있으며, 형법에 의해 처벌 대상이 될 수 있습니다.</p>
                            </div>
                        </td>
                    </tr>
                    <tr>
						<th scope="row"><label for="inp_title">제목 <em><img src="http://img.cgv.co.kr/R2014/images/common/ico/ico_redstar.png" alt="필수"></em></label></th>
						<td colspan="3">
							<input type="text" id="inp_title" name="inp_title" class="inp01" style="width: 672px;">
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="inp_textbox">내용 <em><img src="http://img.cgv.co.kr/R2014/images/common/ico/ico_redstar.png" alt="필수"></em></label></th>
						<td colspan="3">
							<textarea cols="60" rows="5" id="inp_textbox" name="inp_textbox" class="inp_txtbox01" style=" height:94px !important;" placeholder="※문의 내용 및 첨부파일 내에 개인정보(신용카드번호, 계좌번호, 주민번호 등)가 포함되지 않도록 유의하시기 바랍니다."></textarea>
							<p class="byte_info"><span id="sp_ad_content_size_1">0</span>/5000BYTE <span>(<span id="sp_ad_content_size_2">0</span>/2500자)</span></p>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="box-btn qna_email">
			<a style="margin-left:5px" href="/support/default.aspx" class="round gray"><span style="padding:0 14px;">취소</span></a>
            <button style="width:80px" class="round inred" type="submit" id="emailsubmit"><span>등록하기</span></button>
		</div>
	</div>
</div>
</body>
</html>






