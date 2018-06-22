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

<body>
<!------------------------------------------- header------------------------------------- -->
    <div class="content three_quarter">  <!-- wrapper3 의 3/4 -->
      <div class="content">
		    <div align="right">날짜 검색 <input type="date" id="date" value="today" style="display:inline; height:24px;"></div><!-- 자바스크립트 -->
		    <h3 class="nospace clear" align="left">VIDEO</h3><!-- div space 80삭제 -->      
		    <ul class="group services" style="padding-top:10px; padding-left:0px;">
		      <li class="one_half first" style="margin-bottom: 60px;">
		        <article class="bgded overlay">
		          <div class="txtwrap"><!--.services article .txtwrap{padding:5px; border:1px solid;}  -->
		            <iframe width="100%" height="100%" src="https://www.youtube.com/embed/7t3xBqAWLaU?start=15" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe></div>
		          <footer><a href="#">More &raquo;</a></footer>
		        </article>
		        <div align="right"><button id="modify" class="btn btn-primary">관리자수정하기</button></div>
		      </li>
		      <li class="one_half">
		        <article class="bgded overlay">
		          <div class="txtwrap"><!--.services article .txtwrap{padding:5px; border:1px solid;}  -->
					<iframe width="100%" height="100%" src="https://www.youtube.com/embed/PIKNyzq38nw" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
					</div>
		          <footer><a href="#">More &raquo;</a></footer>
		        </article>
		      </li>
		      
		      <li class="one_half first" style="margin-bottom: 60px;">
		        <article class="bgded overlay">
		          <div class="txtwrap"><!--.services article .txtwrap{padding:5px; border:1px solid;}  -->
		            <iframe width="100%" height="100%" src="https://www.youtube.com/embed/7t3xBqAWLaU?start=15" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe></div>
		          <footer><a href="#">More &raquo;</a></footer>
		        </article>
		        <div align="right"><button id="modify" class="btn">관리자수정하기</button></div>
		      </li>
		      <li class="one_half">
		        <article class="bgded overlay">
		          <div class="txtwrap"><!--.services article .txtwrap{padding:5px; border:1px solid;}  -->
					<iframe width="100%" height="100%" src="https://www.youtube.com/embed/PIKNyzq38nw" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
					</div>
		          <footer><a href="#">More &raquo;</a></footer>
		        </article>
		      </li>      
		    </ul>  
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
			<br>      
			<div align="center">
				<select name="due" style="display:inline; height:26px">
					<option value="">기간</option>
					<option value="1">1일</option>
					<option value="7">7일</option>
					<option value="30">30일</option>
				</select>
				
				<select name="loc" style="display:inline; height:26px">
					<option value="">검색 조건</option>
					<option value="location">장소</option>
					<option value="name">게시자</option>
				</select>
				
				<input type="text" placeholder="검색어를 입력하세요" style="display:inline">
				<button name="search" style="display:inline">검색</button>
			</div>		        
      </div>   
    </div>
    
  </div>
</div>  
<!------------------------------------------- footer------------------------------------- -->
<%@include file="../jsp/mpfooter.jsp"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>