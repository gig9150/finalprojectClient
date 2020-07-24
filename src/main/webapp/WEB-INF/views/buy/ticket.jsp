<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
h3 {
	text-align: center;
	background-color: #333333;
	height: 70px;
	color: white;
	line-height: 60px;
}

#warbList>div {
	height: 100%;
	display: inline-block;
	float: left;
}

ul, li {
	margin: 0px;
	margin-top: 10px;
	margin-left: 15px;
	padding: 0px;
	text-align: right;
}

span {
	line-height: 37px;
	margin-right: 15px;
	font-size: 15px;
	color: white;
}

.city {
	height: 40px;
	background-color: gray;
}

.branch {
	height: 40px;
	background-color: black;
}

.hover {
	width: 60px;
	height: 40px;
	line-height: 33px;
}

.hovers {
	background-color: maroon;
}

.hoverCity {
	background-color: black;
}

.hoverBranch {
	background-color: gray;
}

.alltable {
	background-color: white;
	width: auto;
	margin-left: 200px;
	margin-right: 200px;
	height: -webkit-fill-available;
	overflow-y: scroll;
}

.alltable::-webkit-scrollbar {
	display: none;
}

.datetable {
	display: inline-block;
	font-family: fantasy;
}

.timetable {
	display: inline-block;
	border: 1px solid Gray;
	height: 43px;
	width: 72px;
	text-shadow: bold;
}

.medium {
	background-color: yellow;
}

.dateyoo {
	align-content: center;
	background-color: white;
	width: fit-content;
	padding-top: 1%;
	padding-bottom: 1%;
}

.line {
	width: 100%;
	height: 1px;
	background: black;
}

.fname {
	padding-right: 10px;
	border-right: 2px;
	border-right-color: white;
	display: inline-block;
	width: auto;
}

p {
	margin-top: 0;
	margin-bottom: 0rem;
}
.alltable {
	background-color: white;
	width: auto;
	margin-left: 200px;
	margin-right: 200px;
    height: -webkit-fill-available;
	overflow-y:scroll;
}
.alltable::-webkit-scrollbar {
	display: none;
}
.datetable {
	display: inline-block;
	font-family: fantasy;
}

.timetable {
	display: inline-block;
	border: 1px solid Gray;
	height: 43px;
	width: 72px;
	text-shadow: bold;
}

.medium{
	background-color: yellow;
}

.dateyoo{
	align-content: center;
    background-color: white;
    width: fit-content;
    padding-top: 1%;
    padding-bottom: 1%;
}
.line{
	width:100%;
	height:1px;
	background: black;
}
.fname{
	padding-right: 10px;
	border-right: 2px;
	border-right-color: white;
	display:inline-block;
	width:auto;
}
p {
    margin-top: 0;
    margin-bottom: 0rem;
}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<div id="warbList"
	style="width: 1200px; height: 700px; display: block; border: 2px solid black; margin: auto;">
	<jsp:include page="ticketload.jsp"></jsp:include>
</div>
<script type="text/javascript">
	function branchList(data) {

		alert(data);
	};
	function theatherList(data) {
		alert(data);
	};
	function dateList(data) {

		alert(data);
	};
	var tmp;
	$(".city").on('click', function() {
		$(".city").removeClass("hoverCity");
		$(this).toggleClass("hoverCity");
	});
	$(".branch").on('click', function() {
		$(".branch").removeClass("hoverBranch");
		$(this).toggleClass("hoverBranch");
	});

	$(".hover").on('click', function() {
		$(".hover").removeClass("hovers");
		$(this).toggleClass("hovers");
	});
</script>
