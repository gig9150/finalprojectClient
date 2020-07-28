<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<form action="${cp}/service/branchApplyInsert.do">
	<div class="container applyBoard">
	<input type="hidden" name="proStatus" value="대기중">
		<div class="row">
			<h1>
				지점 신청&nbsp;&nbsp;<small>Branch application</small>
			</h1>
		</div>
		<div class="row border">
			<div class="col-md-4">
			<!-- id,이름,연락처 값 세션에서 받아오기 -->
			<label>아이디:</label><input type="text" class="form-control"
				placeholder="id" name="memberId" value="asd1234" readonly="readonly">
			</div>
			<div class="col-md-4">
				<label>이름:</label><input type="text" class="form-control"
					placeholder="name" readonly="readonly" value="허웅">
			</div>
			<div class="col-md-4">
				<label>연락처:</label><input type="text" class="form-control"
					placeholder="phone" readonly="readonly" value="01077206566">
			</div>
			
		</div>
		<div class="row">
			<div class="col-xs-10">
				<label>희망지점주소:</label><input type="text" class="form-control"
					placeholder="addr" id="addr-text" name="proAddr">
					<input type="hidden" id="city-addr" name="cityAddr">
			</div>
			<div class="col-xs-2">
				<button class="btn btn-primary" id="addr-search">주소 검색</button>
				<div class="modal fade" id="addr-modal">
				  <div class="modal-dialog">
				    <div class="modal-content">
				      <div class="modal-header">
				        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				        <h4 class="modal-title">Map</h4>
				      </div>
				      <div class="modal-body kakao-map">
				      	<div class="map_wrap">
						    <div id="map"></div>
						    <div class="hAddr">
						        <span class="title">지도중심기준 행정동 주소정보</span>
						        <span id="centerAddr"></span>
						    </div>
						</div>
				      </div>
				      <div class="modal-footer">
				        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
				        <button type="button" class="btn btn-primary" id="addr-choice">선택완료</button>
				      </div>
				    </div>
				  </div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-9">
				<label>목적:</label><textarea class="form-control" rows="5"
					placeholder="purpose" name="proGoal"></textarea>
			</div>
			<div class="col-md-3">
				<label>규모</label><input type="text" class="form-control"
					placeholder="scale" name="proScale">
			</div>
		</div>
		<div class="row">
			<div class="col-md-3 apply-btn-one">
				<label>개인정보 수집 및 이용 동의:&nbsp;&nbsp;
				<input type="checkbox" class="checkbox" id="apply-modal-checkbox" required="required"></label>
				<!-- Modal -->
				<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				  <div class="modal-dialog">
				    <div class="modal-content">
				      <div class="modal-header">
				        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				        <h4 class="modal-title" id="myModalLabel">개인정보 동의 및 이용약관</h4>
				      </div>
				      <div class="modal-body">
				      	<dl>
							<dt id="n1">제 1조. 목적</dt>
							<dd>본 약관은 메가박스중앙(주)(이하 &ldquo;회사&rdquo;라 합니다)가 제공하는 온라인, 오프라인 서비스(이하 "서비스"라 합니다) 이용과 관련하여 회사와 이용자의 권리, 의무 및 책임사항을 규정함을 목적으로 합니다.</dd>
							<dt id="n2">제 2조. 약관의 효력 및 변경</dt>
							<dd>
							<ol>
								<li>본 약관은 서비스를 이용하고자 본 약관에 동의한 모든 회원에 대하여 그 효력을 발생합니다.</li>
								<li>본 약관의 내용은 회원(서비스)가입 시 게재되거나 공지된 내용에 회원이 동의함으로써 그 효력이 발생합니다.</li>
								<li>회사는 합리적인 사유가 발생될 경우 본 약관을 변경(수정 또는 개정)할 수 있으며, 약관을 개정할 경우 회사는 시행일 및 개정 사유를 명시하여 현행 약관과 함께 시행일로부터 최소 7일 전, 고객에게 불리하게 변경되거나 중요한 내용인 경우에는 최소 30일 전에 회사의 웹사이트 또는 전자메일 등을 통해 공지합니다.</li>
								<li>회원은 변경된 약관에 동의하지 않을 경우 회원 탈퇴를 요청할 수 있으며, 변경된 약관의 효력 발생일 이후 탈퇴 요청을 하지 않을 경우 약관의 변경 사항에 동의한 것으로 간주됩니다.</li>
							</ol>
							</dd>
							<dt id="n3">제 3조. 약관 외 준칙</dt>
							<dd>
							<ol>
								<li>본 약관에 명시되지 아니한 사항에 대해서는 전자상거래 등에서의 소비자보호에 관한 법률, 정보통신망 이용촉진 및 정보보호 등에 관한 법률 및 기타 관련 법령의 규정에 따릅니다.</li>
								<li>본 약관에 명시되지 않은 서비스에 대한 사항은 당사 홈페이지, 모바일 또는 영화관 현장을 통한 해당 서비스 공지사항에 따릅니다.</li>
							</ol>
							</dd>
							<dt id="n4">제 4조. 용어의 정의</dt>
							<dd>본 약관에서 사용하는 주요한 용어의 정의는 다음과 같습니다.
							<ol>
								<li>&ldquo;사이트&rdquo;: 회사가 재화&bull;용역&bull;정보를 회사에게 제공하기 위하여 컴퓨터 등 정보통신 설비를 이용하여 재화&bull;용역을 거래할 수 있도록 설정한 가상의 영업장 또는 회사가 운영하는 웹사이트(홈페이지, 모바일 웹/어플리케이션, SNS 등)를 말하며, 아울러 사이트를 운영하는 사업자의 의미로도 사용합니다.</li>
								<li>"회원" : 본 약관을 인지하고, 본인인증절차를 거쳐 회사에 개인정보를 제공하여 회원으로서 등록하여 회사 아이디(ID)와 멤버십 카드를 부여 받은 자로서, 정상적으로 메가박스 서비스를 이용할 수 있는 권한을 부여 받은 고객을 말합니다.</li>
								<li>"아이디" : 회원의 식별과 회원의 서비스 이용을 위하여 회원이 선정하고 회사가 승인하는 문자나 숫자 혹은 그 조합을 말합니다(이하"ID"라 합니다).</li>
								<li>"비밀번호" : 회원이 부여 받은 ID와 일치된 회원임을 확인하고, 회원 자신의 비밀을 보호하기 위하여 회원이 정한 문자와 숫자의 조합을 말합니다.</li>
								<li>"서비스" : 회사가 회원을 위하여 유료 또는 무료로 제공하는 행위 또는 그 행위 대상인 유, 무형의 물건 자체를 의미하며 온/오프라인에서 이루어지는 영화 관람, 포인트 적립, 사용, 할인, 이벤트 참여 등의 전반적인 고객 서비스 프로그램을 말합니다.</li>
								<li>&ldquo;멤버십 포인트&rdquo;: 회사에서 재화/서비스 구매 시 적립/사용이 가능하도록 제공하는 포인트를 말합니다.</li>
								<li>"이용중지" : 회사가 약관에 의거하여 회원의 서비스 이용을 제한하는 것을 말합니다.</li>
								<li>"해지" : 회사 또는 회원이 서비스 사용 후 이용계약을 해약하는 것을 말합니다.</li>
								<li>"휴면 회원" : 메가박스 서비스를 이용한 마지막 날로부터 연속하여 12개월간 이용 내역이 없는 회원을 말합니다.</li>
							</ol>
							</dd>
						</dl>
				      </div>
				      <div class="modal-footer">
				        <button type="button" class="btn btn-default btn-sm apply-modal-btn" data-dismiss="modal">미동의</button>
				        <button type="button" class="btn btn-default btn-sm apply-modal-btn apply-modal-agree" id="test">약관 동의</button>
				      </div>
				    </div>
				  </div>
				</div>
			</div>
			<div class="col-md-3 apply-btn-two">
				<input type="submit" class="btn btn-default btn-lg" value="신청">
			</div>
		</div>
	</div>
</form>