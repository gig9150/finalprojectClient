/**
 * 
 */
$(function(){
	
	// 1:1 문의  
	$("input:radio").change(function(){
		if($(this).is(":checked")){
			$(this).parents().next().prop("disabled",false);
			$("input:radio").each(function(){
				if(!($(this).is(":checked"))){
					$(this).parents().next().prop("disabled",true);
					$(this).parents().next().next().prop("disabled",true);
				}
			});
		}else{
			$(this).parents().next().prop("disabled",true);
			$("input:radio").each(function(){
				if(!($(this).is(":checked"))){
					$(this).parents().next().prop("disabled",true);
					$(this).parents().next().next().prop("disabled",true);
				}
			});
		}
	});
	
	$("#postal").change(function(){
		if($(this).is(":checked")){
			$.ajax({
				url:"http://localhost:9090/project/service/question/region.do",
				type:"get",
				dataType:"json",
				success:function(data){
					$("#postal-select1 option").not(':first').remove();
					$(data).each(function(i,val){
						var data = val.data;
						$("#postal-select1").append("<option value='"+data+"'>"+data+"</option>");
					});
				}
			});
		}
	});
	
	$("#postal-select1").change(function(){
		var cityAddr = $("#postal-select1").val();
		$("#postal-select2").prop("disabled",false);
		$.ajax({
			url: "http://localhost:9090/project/service/question/branch.do?cityAddr="+cityAddr,
			dataType:"json",
			success:function(data){
				$("#postal-select2 option").not(':first').remove();
				$(data).each(function(i,val){
					var da = val.data;
					$("#postal-select2").append("<option value='"+da+"'>"+da+"</option>")
				});
			}
		});
	});
	
	
	// 1:1 문의 끝 //////////////////////////////////////////////
	//지점 신청 ////////////////////////////////////////
	$("#apply-modal-checkbox").on('click',function(e){
		if($("#apply-modal-checkbox").is(":checked")){
			$("#myModal").modal();
			e.preventDefault();
		}
	});
	
	$(".apply-modal-agree").on('click',function(e){
		$('#myModal').modal("hide");
		$("#apply-modal-checkbox").prop("checked",true);
	});
	
	$('#Carousel').carousel({
        interval: 5000
    })
    
    //지점 신청 끝///////////////////////////////////////////////////
   
    /*////////////////////// 자주묻는 질문 //////////////////////////*/
    	$(".repeated-qna-main-one").on('click',function(e){
			if($(this).next().css("display") == "none"){
				$(this).next().css("display","block");
			}else{
				$(this).next().css("display","none");
			}
		});
    /*//////////////////////////////////////////////////////////*/
	/*/////////////////////////////////분실물 게시판///////////////////////////// */
	
		$(".region-select").change(function(){
			$(".branch-select").prop("disabled",false);
			$(".branch-select option").not(":first").remove();
			var cityAddr = $(this).val()
			$.ajax({
				url:"http://localhost:9090/project/service/getBranch.do?cityAddr="+cityAddr,
				type:"json",
				success:function(data){
					$(data).each(function(i,val){
						var brName = "<option value='"+val+"'>"+val+"</option>"
						$(".branch-select").append(brName);
					});
				}
			});
		});
	
	
	
	/*//////////////////////////////////////////////////////////*/

	/*/////////////////////////////////카카오 지도/////////////////////////////// */
    
    $("#addr-search").on('click',function(e){
		$("#addr-modal").modal();
	});
	
	$("#addr-choice").on('click',function(){
		$("#addr-text").val(addr);
		$("#city-addr").val(cityAddr[0]);
		$("#addr-modal").modal('hide');
	});
	
	setTimeout(function(){
		map.relayout();
	},2000);
	
	var addr = '';
	var cityAddr = '';
	var mapContainer = document.getElementById('map') // 지도를 표시할 div 
	var mapOption = {
	    center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
	    level: 1 // 지도의 확대 레벨
	};

	// 지도를 생성합니다    
	var map = new kakao.maps.Map(mapContainer, mapOption); 
	
	var zoomControl = new kakao.maps.ZoomControl();
	map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);

	// 지도가 확대 또는 축소되면 마지막 파라미터로 넘어온 함수를 호출하도록 이벤트를 등록합니다
	kakao.maps.event.addListener(map, 'zoom_changed', function() {     
		map.relayout();
	});

	// 주소-좌표 변환 객체를 생성합니다
	var geocoder = new kakao.maps.services.Geocoder();

	var marker = new kakao.maps.Marker(), // 클릭한 위치를 표시할 마커입니다
	    infowindow = new kakao.maps.InfoWindow({zindex:1}); // 클릭한 위치에 대한 주소를 표시할 인포윈도우입니다

	// 현재 지도 중심좌표로 주소를 검색해서 지도 좌측 상단에 표시합니다
	searchAddrFromCoords(map.getCenter(), displayCenterInfo);

	// 지도를 클릭했을 때 클릭 위치 좌표에 대한 주소정보를 표시하도록 이벤트를 등록합니다
	kakao.maps.event.addListener(map, 'click', function(mouseEvent) {
	    searchDetailAddrFromCoords(mouseEvent.latLng, function(result, status) {
	        if (status === kakao.maps.services.Status.OK) {
	        	var detailAddr = !!result[0].road_address ? '<div>도로명주소 : ' + result[0].road_address.address_name + '</div>' : '';
	            detailAddr += '<div>지번 주소 : ' + result[0].address.address_name + '</div>';
	            var content = '<div class="bAddr">' +
	                            '<span class="title">법정동 주소정보</span>' + 
	                            detailAddr +
	                        '</div>';
	            
	            addr = result[0].address.address_name;
	            cityAddr = addr.split(' ');
	            
	            // 마커를 클릭한 위치에 표시합니다 
	            marker.setPosition(mouseEvent.latLng);
	            marker.setMap(map);

	            // 인포윈도우에 클릭한 위치에 대한 법정동 상세 주소정보를 표시합니다
	            infowindow.setContent(content);
	            infowindow.open(map, marker);
	        }   
	    });
	});

	// 중심 좌표나 확대 수준이 변경됐을 때 지도 중심 좌표에 대한 주소 정보를 표시하도록 이벤트를 등록합니다
	kakao.maps.event.addListener(map, 'idle', function() {
	    searchAddrFromCoords(map.getCenter(), displayCenterInfo);
	});

	function searchAddrFromCoords(coords, callback) {
	    // 좌표로 행정동 주소 정보를 요청합니다
	    geocoder.coord2RegionCode(coords.getLng(), coords.getLat(), callback);         
	}

	function searchDetailAddrFromCoords(coords, callback) {
	    // 좌표로 법정동 상세 주소 정보를 요청합니다
	    geocoder.coord2Address(coords.getLng(), coords.getLat(), callback);
	}

	// 지도 좌측상단에 지도 중심좌표에 대한 주소정보를 표출하는 함수입니다
	function displayCenterInfo(result, status) {
	    if (status === kakao.maps.services.Status.OK) {
	        var infoDiv = document.getElementById('centerAddr');

	        for(var i = 0; i < result.length; i++) {
	            // 행정동의 region_type 값은 'H' 이므로
	            if (result[i].region_type === 'H') {
	                infoDiv.innerHTML = result[i].address_name;
	                break;
	            }
	        }
	    }
	}
	/////////////////////////////////////////////////////////////
});