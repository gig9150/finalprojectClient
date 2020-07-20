<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<header>
	  <div class="top-div">
	      	<ul class="top-menu-one">
	      		<li><a href="">VIP LOUNGE</a></li>
	      		<li><a href="">맴버쉽</a></li>
	      		<li><a href="">고객센터</a></li>
	      	</ul>
		    <ul class="top-menu-two">
		      <li><a href="">로그인</a></li>
		      <li><a href="">회원가입</a></li>
		      <li><a href="">마이페이지</a></li>
		    </ul>
	  </div>
      <div class="container">
        <div  id="responsive-menu-icon" onclick="toggleResponsiveMenu()">
          <span class="menu-box">
          <span class="menu-inner"></span>
          </span>
        </div>
        <div class="logo">
          <img src="${cp}/resources/logo/logo.png" alt="logo" style="width:50px"/>
          <span>MegaCinema</span>
        </div>
		<!-- 검색창 -->
        <div class="search-box">
          <form>
            <input type="text" id="search" placeholder="Search" onChange="searchInput()" />
            <input type="submit" value="" />
          </form>
        </div>

        <nav id="top-menu">

        <div class='menu-group'>
          <a href="#">예매</a>
        </div>
        <div class='menu-group'>
          <a href="#">영화</a>
          <div class="sub-menu">
            <a href="${cp}/movie/showAllMovies.do">전체영화</a>
            <a href="${cp}/movie/showMovieReviews.do">영화 한줄평</a>
          </div>
        </div>
        <div class='menu-group'>
          <a href="#">극장</a>
          <div class="sub-menu">
            <a href="#">전체극장</a>
            <a href="#">특별관</a>
          </div>
        </div>
        <div class='menu-group'>
          <a href="#">스토어</a>
        </div>
        <div class='menu-group'>
          <a href="#">혜택</a>
          <div class="sub-menu">
            <a href="#">쿠폰 </a>
            <a href="#">마일리지</a>
            <a href="#">맴버쉽</a>
          </div>
        </div>
        </nav>

      </div>
    </header>