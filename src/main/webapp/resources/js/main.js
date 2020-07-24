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
	
	// 썸네일 모달 
	$("#foo").on('shown.bs.modal',function(event){
		console.log('ddd');
		var modalData = $(event.relatedTarget);
		$(".modal-body").html(modalData.data('url'));
		$(".modal-footer").html(modalData.data('story'));
	});