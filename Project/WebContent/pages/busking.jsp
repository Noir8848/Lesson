<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<head>
	<title>INDIYA</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<link href="../layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<style type="text/css">
			.fadding-photo { opacity:0.4;}
			.fadding-photo:hover { opacity:1;}
			a{color:#A0A0A0;}
			i{margin:10px 10px 0px 1px;}
			h1, h2, h3, h4, h5, h6, .heading{font-family:Georgia, "Times New Roman", Times, serif;}
			img{width:200px; height:150px;}<!--4:3-->
			.image_text{position:relative;}			
			.text_on{position:absolute; color:#FFFFFF; top:80px; left:60px; width:100px; opacity:1;}
			#modal{display:none;background-color:#FFFFFF;position:absolute;top:300px;left:200px;padding:10px;border:2px solid #E2E2E2;z-Index:9999}
		</style>		
	</head>
<%@include file="../jsp/mpheader.jsp"%>

<body id="top" onload="initialize()"> <!--구글 맵 API -->
<!------------------------------------------- header------------------------------------- -->

<div class="wrapper row3">
  <div class="hoc container clear" >

    <div id="intro" class="nospace clear" align="left" style="display:inline;">

    <h1>BUSKING TITLE</h1>   
     
    <div id="profile" class="one_half first" style="opacity:1; margin-bottom:50px">
    <img src="../images/demo/gallery/busking.jpg" style="width:400px; height:300px; opacity:1.0;">
    </div>
    
	    <div>
		<h4>찜하기</h4>
		<button class="btn" name="dips">찜하기</button>
	    </div>
	    <div>
	    <ul class="one_half" style="margin-bottom:50px;">
	    <li>밴드명 : 밴드명을 받아옵니다.</li>
	    <li>공연일정 : 공연일정을 받아옵니다.</li>
	    <li>공연장소 : 공연장소을 받아옵니다.</li>
	    </ul>
	    </div>
	    
    </div>
    	    
	<hr>

	<h3>BUSKING INFO</h3>
	<div id="BUSKING INFO">
	<div class="content">
		  <span>공연 소개를 합니다.매년 7~8월에 인천광역시에서 열리는 록 페스티벌로 국내에서는 규모가 꽤 큰 록 페스티벌이다. 인천광역시가 주최하고 예스컴이 주관한다. 펜타포트란 5개의 항구라는 뜻으로 인천공항, 인천항, 정보포트, 비즈니스포트, 레저포트를 말하며 인천광역시의 도시발전전략이다. 본래 1999년에 "트라이포트 페스티벌"이라는 이름으로 시작했다. 딥 퍼플, RATM, 프로디지, 드림시어터 들의 어마어마한 라인업이었으나 그 해의 가장 많은 비가 내렸고, 지금과 같은 트러스가 있는 무대가 아니었기 때문에 안전상 취소되었다. 그 뒤 2006년 1회를 시작으로 12회째 열리고 있다.
		  </span> 
	</div>	
	</div>
		    
	<hr>

    <div id="location" style="width:100%;" align="left" style="margin-top:50px;">
    <h3>LOCATION</h3> 
		<div id="map_canvas" class="one_half first" align="center" style="width:400px; height:300px;">
		</div> 	
		<div class="one_half" align="left">
	      <nav>
	        <ul>
		    <li>밴드명 : 밴드명을 받아옵니다.</li>
		    <li>공연일정 : 공연일정을 받아옵니다.</li>
		    <li>공연장소 : 공연장소을 받아옵니다.</li>         
	        </ul>
	      </nav> 
	    </div>
	</div>     

        	
    </div>    
		    
	<hr>

<div id="video" class="hoc">
	<h3>VIDEO</h3>
		<ul class="group services"  style="margin-top:50px">

			<li class="one_third first">
			<iframe width="300" height="300" src="https://www.youtube.com/embed/uXMuWi0dUBc" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
			</li>
			<li class="one_third">
			<iframe width="300" height="300" src="https://www.youtube.com/embed/PjYUODTUsvc" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
			</li>
			<li class="one_third">
			<iframe width="300" height="300" src="https://www.youtube.com/embed/cUFVR5sgbt0" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
			</li>
		</ul>

</div>

      <nav class="pagination">
                <!--페이징  -->
        <ul>
          <li><a href="#">&laquo; 이전페이지</a></li>
          <li><a href="#">1</a></li>
          <li><a href="#">2</a></li>
          <li><a href="#">3</a></li>
          <li><a href="#">4</a></li>
          <li class="current"><strong>5</strong></li>
          <li><a href="#">6</a></li>
          <li><a href="#">7</a></li>
          <li><strong>&hellip;</strong></li>
          <li><a href="#">9</a></li>
          <li><a href="#">다음페이지 &raquo;</a></li>
        </ul>
      </nav>




    </div><!-- container -->
    
    </div><!-- wrapper row3 -->
<!------------------------------------------- footer------------------------------------- -->
<%@include file="../jsp/mpfooter.jsp"%>
<!--구글 맵 API, key 발급-->
<script type="text/javascript" src="http://maps.google.com/maps/api/js?key=AIzaSyASO-TtcmYDX1eNZRtTawpGPIa_te-uhN8&sensor=false&language=ko"></script>
<script> 
  function initialize() { 
  var myLatlng = new google.maps.LatLng(37.51619821, 127.1041016); // y, x좌표값 : 여기에 주소자료롤 받아 입력해야 함.
  var mapOptions = { 
        zoom: 15, 
        center: myLatlng, 
        mapTypeId: google.maps.MapTypeId.ROADMAP 
  } 
 
  var map = new google.maps.Map(document.getElementById('map_canvas'), mapOptions);
  var marker = new google.maps.Marker({ 
            position: myLatlng, 
            map: map, 
            title: "회사이름" 
  }); 
  var infowindow = new google.maps.InfoWindow( 
          { 
            content: "<h1>회사이름</h1>", 
            maxWidth: 300 
          } 
  ); 

  google.maps.event.addListener(marker, 'click', function() { 
  infowindow.open(map, marker); 
  }); 
  } 
 </script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>