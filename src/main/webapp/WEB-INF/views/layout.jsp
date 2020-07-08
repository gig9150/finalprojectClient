<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>BLUEBOX</title>
<link rel="icon" type="image/png" href="${cp}/resources/logo/logo.png" />
<style>
@import url(https://fonts.googleapis.com/css?family=PT+Sans:400,400i,700);
/* VARIABLE.SCSS */
/* - */
/* MIXINS.SCSS */
/* - */
/* MEDIA.SCSS */
@import url(https://cdnjs.cloudflare.com/ajax/libs/flexslider/2.6.3/flexslider.min.css);
@media (max-width: 599px) {
  button {
    height: 45px;
    padding: 0 15px;
  }
  
  h1 {
    font-size: 1.6rem;
  }

  h2 {
    font-size: 1.4rem;
  }

  header .logo {
    display: flex;
    justify-content: center;
    align-items: center;
    flex-basis: 100%;
  }
  header .logo img {
    width: 20px;
  }
  header .logo span {
    font-size: 1.66rem;
  }
  header nav {
    display: inline;
    flex-basis: 100%;
  }
  header nav:not(.responsive) {
    display: none;
  }
  header nav.responsive .menu-group {
    display: block;
    width:30px;
  }
  header nav.responsive .menu-group a {
    display: block;
    padding: 8px 0;
  }
  header nav.responsive .menu-group:hover .sub-menu {
    display: block;
  }
  header nav.responsive .menu-group:hover .sub-menu a {
    color: inherit;
    padding: 5px 15px;
  }
  header nav.responsive .menu-group:hover .sub-menu a:hover {
    color: #66ceff;
  }

  .clients .item {
    width: 100%;
  }

  footer nav > a:not(:last-child):after {
    margin: 0 5px;
  }
}
@media (min-width: 600px) and (max-width: 768px) {
  header .logo {
    display: flex;
    justify-content: center;
    align-items: center;
    flex-basis: 100%;
  }
  header .logo img {
    width: 20px;
  }
  header .logo span {
    font-size: 1.66rem;
  }
  header nav {
    display: inline;
    flex-basis: 100%;
  }
  header nav:not(.responsive) {
    display: none;
  }
  header nav.responsive .menu-group {
    display: block;
  }
  header nav.responsive .menu-group a {
    display: block;
    padding: 8px 0;
  }
  header nav.responsive .menu-group:hover .sub-menu {
    display: block;
  }
  header nav.responsive .menu-group:hover .sub-menu a {
    color: inherit;
    padding: 5px 15px;
  }
  header nav.responsive .menu-group:hover .sub-menu a:hover {
    color: #66ceff;
  }

  .portfolio .container .box {
    width: 45%;
  }

  footer nav > a:not(:last-child):after {
    margin: 0 5px;
  }
}
@media (min-width: 600px) {
  button {
    height: 60px;
    padding: 0 25px;
  }

  h1 {
    font-size: 3rem;
  }

  h2 {
    font-size: 2rem;
  }
}
@media (min-width: 769px) {
  header #responsive-menu-icon {
    display: none;
  }
  header .logo {
    display: flex;
    align-items: center;
    padding: 10px 0;
  }
  header .logo span {
    font-size: 2.188rem;
  }
  header nav {
    display: flex;
    align-items: center;
    padding: 15px 0;
    order: 1;
  }
  header nav > .menu-group:not(:first-child) {
    padding: 0 20px;
  }
  header nav > .menu-group:first-child {
    padding-right: 20px;
  }
  header nav > .menu-group:not(:last-child) {
    border-right: 2px solid #a1a1a1;
  }
  header nav > .menu-group:hover > .sub-menu {
    display: block;
    position: absolute;
  }
  header nav > .menu-group:hover > .sub-menu:before {
    content: "";
    display: block;
    height: 15px;
  }
  header nav > .menu-group:hover > .sub-menu > a:first-child:before {
    transition: all .2s ease;
    -webkit-transition: all .2s ease;
    content: '';
    position: absolute;
    left: 30px;
    top: 7px;
    width: 0;
    height: 0;
    border-left: 5px solid transparent;
    border-right: 5px solid transparent;
    border-bottom: 8px solid #e2e7ed;
  }
  header nav > .menu-group:hover > .sub-menu > a:hover:first-child:before {
    border-bottom: 8px solid #00aeff;
  }
  header nav > .menu-group:hover > .sub-menu > a:not(:last-child) {
    border-bottom: 1px solid #31333e;
  }
  header nav > .menu-group a {
    font-size:16px;
    color: #626262;
  }
  header nav > .menu-group a:hover {
    color: #66ceff;
  }
  header nav > .menu-group .sub-menu {
    display: none;
  }
  header nav > .menu-group .sub-menu a {
    background-color: #e2e7ed;
    color: #000000;
    padding: 12px 15px;
    display: block;
  }
  header nav > .menu-group .sub-menu a:hover {
    background-color: #00aeff;
    color: #ffffff;
  }

  .slider {
    height: 650px;
  }

  .portfolio .container .box {
    width: 30%;
  }

  footer nav > a:not(:last-child):after {
    margin: 0 15px;
  }
}
@media (min-width: 769px) and (max-width: 980px) {
  nav {
    flex-basis: 100%;
  }
}
@media (min-width: 981px) {
  header .container .logo {
    margin-right: 50px;
  }
  header .container .search-box {
    order: 2;
    flex-basis: 155px;
  }
}
/* - */
/* FLEXSLIDER.SCSS */
.flexslider {
  background: none !important;
  border: none !important;
}
.flexslider .slides img {
  max-width: 700px;
  margin: auto;
}
.flexslider .flex-prev,
.flexslider .flex-next {
  font-size: 0;
}

/* - */
/* MAIN.SCSS */
* {
  margin: 0px;
  padding: 0px;
}

html {
  font-family: "PT Sans", sans-serif;
  font-size: 16px;
  color: #2a2e39;
}

body {
  background-color: #ffffff;
}

h1, h2 {
  font-weight: normal;
}

h2 {
  color: #626262;
  margin-bottom: 40px;
}

a {
  text-decoration: none;
  outline: none;
  color: #00aeff;
  white-space: nowrap;
  transition: all .2s ease;
  -webkit-transition: all .2s ease;
}
a:hover {
  color: #31333e;
}

button {
  border-width: 0;
  border-radius: 5px;
  background-color: #00aeff;
  color: #ffffff;
  font-size: 1.375rem;
  cursor: pointer;
  transition: all .2s ease;
  -webkit-transition: all .2s ease;
}
button:hover {
  background-color: #007ab7;
}

.container {
  margin: auto;
  max-width: 960px;
  width: 90%;
}

/* - */
/* HEADER.SCSS */
.top-menu-one{
	list-style-type: none;
    position: relative;
    left: 500px;
    margin-bottom: 20px;
    margin-top: 20px;
    display: inline;
}
.top-menu-two{
	list-style-type: none;
    position: relative;
    right: 470px;
    padding-bottom: 10px;
    padding-top: 10px;
    display: inline;
}
.top-menu-one > li{
	float: left;
    margin-right: 10px;
    border-right: 1px solid black;
    padding-right: 10px;
    margin-top: 10px;
}
.top-menu-two > li{
	float: right;
    margin-right: 10px;
    border-right: 1px solid black;
    padding-right: 10px;
    margin-top: 10px;
}
header > .container {
  display: flex;
  justify-content: space-between;
  background-color:block;
  flex-wrap: wrap;
  padding-top: 20px;
}
header > .container .logo {
  order: -1;
}
header > .container .logo > span {
  margin-left: 10px;
  font-weight: bold;
  letter-spacing: -2px;
  color: #31333e;
}
header > .container #responsive-menu-icon {
  align-self: flex-end;
  padding: 0;
  height: 35px;
  outline: none;
  cursor: pointer;
  background-color: transparent;
}
header > .container #responsive-menu-icon .menu-box {
  position: relative;
  display: inline-block;
  width: 30px;
  height: 20px;
}
header > .container #responsive-menu-icon .menu-box .menu-inner, header > .container #responsive-menu-icon .menu-box .menu-inner:before, header > .container #responsive-menu-icon .menu-box .menu-inner:after {
  display: block;
  position: absolute;
  width: 30px;
  height: 2px;
  background-color: #626262;
  border-radius: 4px;
}
header > .container #responsive-menu-icon .menu-box .menu-inner:before {
  content: '';
  top: 7px;
}
header > .container #responsive-menu-icon .menu-box .menu-inner:after {
  content: '';
  top: 14px;
}
header > .container #responsive-menu-icon.open-menu .menu-inner, header > .container #responsive-menu-icon.open-menu .menu-box .menu-inner:before, header > .container #responsive-menu-icon.open-menu .menu-box .menu-inner:after, header > .container #responsive-menu-icon.open-menu .menu-inner:before, header > .container #responsive-menu-icon.open-menu .menu-inner:after {
  background-color: #66ceff;
}
header > .container nav .menu-group > a {
  color: #626262;
  text-transform: uppercase;
}
header > .container nav .menu-group > a:hover {
  color: #66ceff;
}
header > .container nav .sub-menu {
  display: none;
  width: 150px;
}
header > .container .search-box {
  display: flex;
  justify-content: flex-end;
  align-items: center;
  padding: 10px 0;
}
header > .container .search-box form {
  position: relative;
}
header > .container .search-box .stretch, header > .container .search-box input[type="text"]:focus {
  width: 120px !important;
  background-color: #d8f3ff !important;
}
header > .container .search-box input {
  border: none;
  outline: none;
}
header > .container .search-box input[type="text"] {
  width: 80px;
  height: 30px;
  font-style: italic;
  padding: 0 25px 0 9px;
  background-color: #f1f3f6;
  border-radius: 2px;
  -webkit-transition: width 0.4s ease-in-out;
  transition: width 0.4s ease-in-out;
}
header > .container .search-box input[type="submit"] {
  background: url(../img/search-icon.png) no-repeat;
  position: absolute;
  top: 3px;
  right: 5px;
  width: 20px;
  height: 24px;
  cursor: pointer;
}

/* - */
/* MAIN-PAGE.SCCS */
.slider {
  background-color: #31333e;
}
.slider .container > .slider-header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  flex-wrap: wrap;
  padding: 60px 0 80px 0;
}
.slider .container > .slider-header h1 {
  color: #ffffff;
  margin: 0 15px 15px 0;
}

.portfolio .container {
  display: flex;
  justify-content: space-between;
  flex-wrap: wrap;
  padding: 50px 0;
}
.portfolio .container .box {
  text-align: center;
}
.portfolio .container .box .icon-box {
  margin: 25px 0;
}
.portfolio .container .box a, .portfolio .container .box p {
  font-size: .9375rem;
}
.portfolio .container .box p {
  margin-bottom: 25px;
  line-height: 1.5rem;
}
.portfolio .container .box a {
  font-weight: bold;
  text-transform: uppercase;
}

.newsletter {
  background-color: #503396;
}
.newsletter .container {
  padding: 80px 0;
}
.newsletter .container .newsletter-box {
  display: flex;
  justify-content: space-between;
  flex-wrap: wrap;
}
.newsletter .container .newsletter-box input {
  width: 100%;
  max-width: 650px;
  height: 60px;
  padding: 0 30px;
  margin-bottom: 20px;
  border-radius: 5px;
  margin-right: 30px;
  border: none;
  box-shadow: 0px 1px 5px 0px rgba(0, 0, 0, 0.3);
  webkit-box-shadow: 0px 1px 5px 0px rgba(0, 0, 0, 0.3);
  -moz-box-shadow: 0px 1px 5px 0px rgba(0, 0, 0, 0.3);
}

.clients {
  display: flex;
  align-items: center;
}
.clients .container {
  padding: 80px 0;
}
.clients .container .clients-list {
  display: flex;
  justify-content: center;
  align-items: center;
  flex-wrap: wrap;
}
.clients .container .clients-list .row {
  display: flex;
  justify-content: center;
  align-items: center;
  flex-wrap: wrap;
}
.clients .container .clients-list .row .item {
  text-align: center;
  padding: 15px;
}

/* - */
/* FOOTER.SCSS */
footer {
  background-color: #31333e;
  min-height: 210px;
  font-size: 0.9375rem;
  color: #cacfd6;
}
footer > .container > div {
  display: flex;
  justify-content: space-between;
  align-items: center;
  flex-wrap: wrap;
  padding-top: 25px;
}
footer > .container > div > nav > a {
  color: #cacfd6;
}
footer > .container > div > nav > a:hover {
  color: #66ceff;
}
footer > .container > div > nav > a:not(:last-child):after {
  content: "";
  border-right: 2px solid #cacfd6;
}
footer > .container > div .social-icons img {
  transition: all .2s ease;
  -webkit-transition: all .2s ease;
}
footer > .container > div .social-icons img:hover {
  opacity: .7;
  filter: alpha(opacity=70);
}
footer > .container > div .social-icons > a:not(:last-child) {
  margin-right: 11px;
}
footer > .container > div > * {
  padding-top: 25px;
}
</style>
</head>
<body>
<div id="wrap">
	<div id="header">
		<tiles:insertAttribute name="header"/>
	</div>
	<div id="content">
		<tiles:insertAttribute name="content"/>
	</div>
	<div id="footer">
		<tiles:insertAttribute name="footer"/>
	</div>
</div>
</body>
<script>
$(window).load(function() {
	  $('.flexslider').flexslider({
	    animation: "slide",
	    controlNav: false 
	  });
	});

	function toggleResponsiveMenu() {
	  const menu = document.getElementById("top-menu");
	  const menuIcon = document.getElementById("responsive-menu-icon");

	  if (menu.className === "responsive") {
	      menu.className = "";
	      menuIcon.className = "";
	  } else {
	      menu.className = "responsive";
	      menuIcon.className = "open-menu";
	  }
	}

	function searchInput() {
	  const search= document.getElementById("search");
	  if (search.value !== "") {
	    search.className = "stretch"
	  } else {
	    search.className = ""
	  }
	}
</script>
</html>