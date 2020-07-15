<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
	#inquiry_wrap{
		border: 1px solid red;
		width: 50%;
		height: 100%;
		margin: auto;
	}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="inquiry_wrap">
	<div id="inquiry_div">
		<dl class="contxt_type1">
			<dt class="tit">고객님의 문의에 <span class="txt_color02">답변하는 직원은 고객 여러분의 가족 중 한 사람</span>일 수 있습니다.</dt>
			<dd class="desc">고객의 언어폭력(비하, 욕설, 반말, 성희롱 등)으로부터 직원을 보호하기 위해 관련 법에 따라 수사기관에 필요한 조치를 요구할 수 있으며, 형법에 의해 처벌 대상이 될 수 있습니다.</dd>
		</dl>
		<div>
			<h4>문의내용</h4>
		</div>
		<hr>
		<form action="${cp }/ask/insert.do">
			<table>
				<tr>
					<th>내용</th>
					<td><input type="text"></td>
				</tr>
				<tr>
					<th></th>
					<td><textarea cols="10" rows="10"></textarea></td>
				</tr>
			</table>
			<br>
			<div>
				<h4>회원정보</h4>
			</div>
			<hr>
			<table>
				<tr>
					<th>성명</th>
					<td><input type="text"></td>
				</tr>
				<tr>
					<th>연락처</th>
					<td>
						<select title="연락처" id="phone">
							<option value="">선택</option>
							<option value="010" selected>010</option>
							<option value="011">011</option>
							<option value="016">016</option>
							<option value="017">017</option>
							<option value="018">018</option>
							<option value="019">019</option>
						</select>
						<input type="text">
						<input type="text">
					</td>
				</tr>
				<tr>
					<th>이메일</th>
					<td><input type="text"></td>
				</tr>
			</table>
			<div>
				<input type="button" value="취소">
				<input type="button" value="확인">
			</div>
		</form>
	</div>
</div>
</body>
</html>






