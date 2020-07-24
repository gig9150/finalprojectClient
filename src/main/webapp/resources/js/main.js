/**
 * 
 */

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
	