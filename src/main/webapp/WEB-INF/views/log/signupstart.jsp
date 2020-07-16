<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link href="/project/resources/css/log/signupstart.css" rel="stylesheet">
<section class="all_warp">
	<form action="${cp }/log/signup.do" id="section01" method="post">
		<ul class="join_box">
			<li class="checkBox check01">
				<ul class="clearfix">
					<li>이용약관, 개인정보 수집 및 이용, 위치정보 이용약관, 프로모션 안내 메일 수신에 모두
						동의합니다.</li>
					<li class="btn mainbtn"><input type="checkbox" name="check1"
						id="chk" class="chkAll"></li>
				</ul>

			</li>
			<li class="checkBox check02">
				<ul class="clearfix">
					<li>이용약관 동의</li>
					<li class="btn"><input type="checkbox" name="check2"
						class="chkAll"></li>
				</ul> <textarea name="" id="" readonly="readonly">여러분을 환영합니다.
	메가시네마 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 메가시네마 서비스의 이용과 관련하여 메가시네마 서비스를 제공하는 메가시네마 주식회사(이하 ‘메가시네마’)와 이를 이용하는 메가시네마 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 메가시네마 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
	       </textarea>
			</li>
			<li class="checkBox check03">
				<ul class="clearfix">
					<li>개인정보 수집 및 이용에 대한 안내</li>
					<li class="btn"><input type="checkbox" name="check2"
						class="chkAll"></li>
				</ul> <textarea name="" id="">여러분을 환영합니다.
	메가시네마 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 메가시네마 서비스의 이용과 관련하여 메가시네마 서비스를 제공하는 메가시네마 주식회사(이하 ‘메가시네마’)와 이를 이용하는 메가시네마 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 메가시네마 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
	       </textarea>
			</li>
			<li class="checkBox check03">
				<ul class="clearfix">
					<li>위치정보 이용약관 동의</li>
					<li class="btn"><input type="checkbox" name="check2" readonly="readonly"
						class="chkAll"></li>
				</ul> <textarea name="" id="" readonly="readonly">여러분을 환영합니다.
	메가시네마 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 메가시네마 서비스의 이용과 관련하여 메가시네마 서비스를 제공하는 메가시네마 주식회사(이하 ‘메가시네마’)와 이를 이용하는 메가시네마 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 메가시네마 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
	       </textarea>
			</li>
			<li class="checkBox check04">
				<ul class="clearfix">
					<li>이벤트 등 프로모션 알림 메일 수신</li>
					<li class="btn"><input type="checkbox" name="check2"
						class="chkAll"></li>
				</ul>

			</li>
		</ul>
		<ul class="footBtwrap clearfix">
			<li><button class="fpmgBt2">동의</button></li>
		</ul>
	</form>
</section>

<script>
	function allCheckFunc(obj) {
		$("[name=check2]").prop("checked", $(obj).prop("checked"));

	}

	function oneCheckFunc(obj) {
		var allObj = $("[name=check1]");
		var objName = $(obj).attr("name");

		if ($(obj).prop("checked")) {
			checkBoxLength = $("[name=" + objName + "]").length;
			checkedLength = $("[name=" + objName + "]:checked").length;

			if (checkBoxLength == checkedLength) {
				allObj.prop("checked", true);

			} else {
				allObj.prop("checked", false);

			}
		} else {
			allObj.prop("checked", false);
		}
	}

	$(function() {
		$("[name=check1]").click(function() {
			allCheckFunc(this);
		});
		$("[name=check2]").each(function() {
			$(this).click(function() {
				oneCheckFunc(this);
			});
		});
		$('input[type="checkbox"]').click(function() {
			var output = '';
			$('input[type="checkbox"]:checked').each(function(index, item) {
				if (index != 0) {
					output += ',';
				}
				output += $(this).val();
			});
			
		});
		$(".fpmgBt2").click(function(e){
			if($('input:checked').length==0){
				alert("동의 체크 해주세요.");
				e.preventDefault();
			}
			if($('input:checked').length==1){
				alert("동의 체크 해주세요.");
				e.preventDefault();
			}
			if($('input:checked').length==2){
				alert("동의 체크 해주세요.");
				e.preventDefault();
			}
			if($('input:checked').length==3){
				alert("동의 체크 해주세요.");
				e.preventDefault();
			}
			if($('input:checked').length==4){
				alert("동의 체크 해주세요.");
				e.preventDefault();
			}
		});
	});
	
</script>