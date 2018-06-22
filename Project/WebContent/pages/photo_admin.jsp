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
<!------------------------------------------- header-------------------------------------- -->
<!-- left sidebar wrapper3 div를 빌려와 두개의div(sidebar one_quarter first, content three_quarter)태그에 나눔 -->

<div class="wrapper row3">
	<div class="hoc container clear">
        <div class="sidebar one_quarter first" style="margin-top:50px;">
           <nav id="sort" class="overlay" style="border: solid; borde-color:#D7D7D7; border-width: 0 0 1px 0;">
				<h3><font color="#000000" style="vertical-align:20px;">SORT<br></font></h3>
					<font color="#000000">
						<ul>
							<li><input type="radio" name="sort" value="date_asc" checked="checked" style="display:inline;"> 빠른 날짜 순</li>
							<li><input type="radio" name="sort" value="date_desc" style="display:inline;"> 오래된 날짜 순<br></li>
							<li><input type="radio" name="sort" value="loc_asc" style="display:inline; "> 공연장소 오름차 순<br></li>
							<li><input type="radio" name="sort" value="loc_desc" style="display:inline;"> 공연장소 내림차 순<br></li>
							<li><input type="radio" name="sort" value="name_asc" style="display:inline;"> 게시자 이름 오름차 순<br></li>
							<li><input type="radio" name="sort" value="name_desc" style="display:inline;"> 게시자 이름 내림차 순<br></li>      
						</ul>  
					</font>            
              </nav>
        </div>

	
    
<!--------------------------------------------------------------------------사이드 파트 끝 ------------------------------------------------------>
 
			<div class="content three_quarter"> <!-- wrapper3 의 3/4 -->
				<div class="content">
					<div align="right">날짜 검색 <input type="date" id="date" value="yyyy-mm-dd" style="display:inline; height:24px;"></div><!-- 자바스크립트 -->
						<h3 class="nospace clear" align="left">Photo</h3>
						  
							<ul class="group services" style="padding-top:10px; padding-left:0px;">
							
								<li class="one_third first" style="margin-bottom: 60px;">								
									<article class="bgded overlay" style="padding-bottom:0px;">
										<div class="txtwrap fadding-photo" ><!--.services article .txtwrap{padding:5px; border:1px solid;}  -->
										<a href="../pages/photoviewpage.html" data-toggle="modal" data-target="#myModal"><img src="../images/demo/gallery/busking.jpg"></a>
										</div>										
										<div style="opacity:1; color:#FFFFFF">
											<div align="center">공연날짜 | 공연장소</div>
											<div align="center">사진제목 | 조회수</div>
											<div align="center">작성자</div>
										</div>	
									</article>
									<div align="right" style="margin-top:20px;">									
										<button id="delete_photo" class="btn btn-default" data-toggle="modal" data-target="#modal_pic_del">사진삭제(관)</button>
										<button id="modify" class="btn btn-default" data-toggle="modal" data-target="#modal_pic_mod">사진변경(뮤)</button>
									</div>
								</li>
								
								<li class="one_third" style="margin-bottom: 60px;">								
									<article class="bgded overlay" style="padding-bottom:0px;">
										<div class="txtwrap fadding-photo" ><!--.services article .txtwrap{padding:5px; border:1px solid;}  -->
										<a href="../pages/photoviewpage.html" data-toggle="modal" data-target="#myModal"><img src="../images/demo/gallery/busking.jpg"></a>
										</div>										
										<div style="opacity:1; color:#FFFFFF">
											<div align="center">공연날짜 | 공연장소</div>
											<div align="center">사진제목 | 조회수</div>
											<div align="center">작성자</div>
										</div>	
									</article>
									<div align="right" style="margin-top:20px;">									
										<button id="delete_photo" class="btn btn-default" data-toggle="modal" data-target="#modal_pic_del">사진삭제(관)</button>
										<button id="modify" class="btn btn-default" data-toggle="modal" data-target="#modal_pic_mod">사진변경(뮤)</button>
									</div>
								</li>		
									
								<li class="one_third" style="margin-bottom: 60px;">								
									<article class="bgded overlay" style="padding-bottom:0px;">
										<div class="txtwrap fadding-photo" ><!--.services article .txtwrap{padding:5px; border:1px solid;}  -->
										<a href="../pages/photoviewpage.html" data-toggle="modal" data-target="#myModal"><img src="../images/demo/gallery/busking.jpg"></a>
										</div>										
										<div style="opacity:1; color:#FFFFFF">
											<div align="center">공연날짜 | 공연장소</div>
											<div align="center">사진제목 | 조회수</div>
											<div align="center">작성자</div>
										</div>	
									</article>
									<div align="right" style="margin-top:20px;">									
										<button id="delete_photo" class="btn btn-default" data-toggle="modal" data-target="#modal_pic_del">사진삭제(관)</button>
										<button id="modify" class="btn btn-default" data-toggle="modal" data-target="#modal_pic_mod">사진변경(뮤)</button>
									</div>
								</li>
								
								<li class="one_third first" style="margin-bottom: 60px;">								
									<article class="bgded overlay" style="padding-bottom:0px;">
										<div class="txtwrap fadding-photo" ><!--.services article .txtwrap{padding:5px; border:1px solid;}  -->
										<a href="../pages/photoviewpage.html" data-toggle="modal" data-target="#myModal"><img src="../images/demo/gallery/busking.jpg"></a>
										</div>										
										<div style="opacity:1; color:#FFFFFF">
											<div align="center">공연날짜 | 공연장소</div>
											<div align="center">사진제목 | 조회수</div>
											<div align="center">작성자</div>
										</div>	
									</article>
									<div align="right" style="margin-top:20px;">									
										<button id="delete_photo" class="btn btn-default" data-toggle="modal" data-target="#modal_pic_del">사진삭제(관)</button>
										<button id="modify" class="btn btn-default" data-toggle="modal" data-target="#modal_pic_mod">사진변경(뮤)</button>
									</div>
								</li>
								
								<li class="one_third" style="margin-bottom: 60px;">								
									<article class="bgded overlay" style="padding-bottom:0px;">
										<div class="txtwrap fadding-photo" ><!--.services article .txtwrap{padding:5px; border:1px solid;}  -->
										<a href="../pages/photoviewpage.html" data-toggle="modal" data-target="#myModal"><img src="../images/demo/gallery/busking.jpg"></a>
										</div>										
										<div style="opacity:1; color:#FFFFFF">
											<div align="center">공연날짜 | 공연장소</div>
											<div align="center">사진제목 | 조회수</div>
											<div align="center">작성자</div>
										</div>	
									</article>
									<div align="right" style="margin-top:20px;">									
										<button id="delete_photo" class="btn btn-default" data-toggle="modal" data-target="#modal_pic_del">사진삭제(관)</button>
										<button id="modify" class="btn btn-default" data-toggle="modal" data-target="#modal_pic_mod">사진변경(뮤)</button>
									</div>
								</li>		
									
								<li class="one_third" style="margin-bottom: 60px;">								
									<article class="bgded overlay" style="padding-bottom:0px;">
										<div class="txtwrap fadding-photo" ><!--.services article .txtwrap{padding:5px; border:1px solid;}  -->
										<a href="../pages/photoviewpage.html" data-toggle="modal" data-target="#myModal"><img src="../images/demo/gallery/busking.jpg"></a>
										</div>										
										<div style="opacity:1; color:#FFFFFF">
											<div align="center">공연날짜 | 공연장소</div>
											<div align="center">사진제목 | 조회수</div>
											<div align="center">작성자</div>
										</div>	
									</article>
									<div align="right" style="margin-top:20px;">									
										<button id="delete_photo" class="btn btn-default" data-toggle="modal" data-target="#modal_pic_del">사진삭제(관)</button>
										<button id="modify" class="btn btn-default" data-toggle="modal" data-target="#modal_pic_mod">사진변경(뮤)</button>
									</div>
								</li>
								<li class="one_third first" style="margin-bottom: 60px;">								
									<article class="bgded overlay" style="padding-bottom:0px;">
										<div class="txtwrap fadding-photo" ><!--.services article .txtwrap{padding:5px; border:1px solid;}  -->
										<a href="../pages/photoviewpage.html" data-toggle="modal" data-target="#myModal"><img src="../images/demo/gallery/busking.jpg"></a>
										</div>										
										<div style="opacity:1; color:#FFFFFF">
											<div align="center">공연날짜 | 공연장소</div>
											<div align="center">사진제목 | 조회수</div>
											<div align="center">작성자</div>
										</div>	
									</article>
									<div align="right" style="margin-top:20px;">									
										<button id="delete_photo" class="btn btn-default" data-toggle="modal" data-target="#modal_pic_del">사진삭제(관)</button>
										<button id="modify" class="btn btn-default" data-toggle="modal" data-target="#modal_pic_mod">사진변경(뮤)</button>
									</div>
								</li>
								
								<li class="one_third" style="margin-bottom: 60px;">								
									<article class="bgded overlay" style="padding-bottom:0px;">
										<div class="txtwrap fadding-photo" ><!--.services article .txtwrap{padding:5px; border:1px solid;}  -->
										<a href="../pages/photoviewpage.html" data-toggle="modal" data-target="#myModal"><img src="../images/demo/gallery/busking.jpg"></a>
										</div>										
										<div style="opacity:1; color:#FFFFFF">
											<div align="center">공연날짜 | 공연장소</div>
											<div align="center">사진제목 | 조회수</div>
											<div align="center">작성자</div>
										</div>	
									</article>
									<div align="right" style="margin-top:20px;">									
										<button id="delete_photo" class="btn btn-default" data-toggle="modal" data-target="#modal_pic_del">사진삭제(관)</button>
										<button id="modify" class="btn btn-default" data-toggle="modal" data-target="#modal_pic_mod">사진변경(뮤)</button>
									</div>
								</li>		
									
								<li class="one_third" style="margin-bottom: 60px;">								
									<article class="bgded overlay" style="padding-bottom:0px;">
										<div class="txtwrap fadding-photo" ><!--.services article .txtwrap{padding:5px; border:1px solid;}  -->
										<a href="../pages/photoviewpage.html" data-toggle="modal" data-target="#myModal"><img src="../images/demo/gallery/busking.jpg"></a>
										</div>										
										<div style="opacity:1; color:#FFFFFF">
											<div align="center">공연날짜 | 공연장소</div>
											<div align="center">사진제목 | 조회수</div>
											<div align="center">작성자</div>
										</div>	
									</article>
									<div align="right" style="margin-top:20px;">									
										<button id="delete_photo" class="btn btn-default" data-toggle="modal" data-target="#modal_pic_del">사진삭제(관)</button>
										<button id="modify" class="btn btn-default" data-toggle="modal" data-target="#modal_pic_mod">사진변경(뮤)</button>
									</div>
								</li>
																								
							</ul>

										<!-- 사진 모달 -->
										<div id="myModal" class="modal fade" role="dialog" align="left">
										  <div class="modal-dialog">
										  										
										    <!-- Modal content-->
										    <div class="modal-content">
										      <div class="modal-header">
										        <button type="button" class="close" data-dismiss="modal">&times;</button>
										        <h4 class="modal-title">사진제목이 올 자리</h4>
										      </div>
										      <div class="modal-body">
										      	<div id="modal_image">
										        <img src="../images/demo/gallery/busking.jpg">
										        </div>
										        <br>
										        <div id="modal_content">
										        10년전박상인이기타들고깝치던곳입니다.10년전박상인이기타들고깝치던곳입니다.10년전박상인이기타들고깝치던곳입니다.
										        </div>
										      </div>
										      <div class="modal-footer">
										        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
										      </div>
										    </div>
										
										  </div>
										</div>	
																		
										<!-- 관리자 삭제 모달 -->
										<div id="modal_pic_del" class="modal fade" role="dialog" align="left">
										  <div class="modal-dialog">
										  										
										    <!-- Modal content-->
										    <div class="modal-content">
										      <div class="modal-header">
										        <button type="button" class="close" data-dismiss="modal">&times;</button>
										        <h4 class="modal-title">사진을 삭제</h4>
										      </div>
										      <div class="modal-body">
									          <div id="modal_image">
									          <table>
									          <tr>
									          <td id="pic_name_num">날짜</td>
									          <td>장소</td>
									          <td>게시자</td>
									          <td><input type="file" name="pic" value="파일 선택"></td>									        									        
									          </tr>
									          </table>
									          </div>
										      </div>
										      <div class="modal-footer">
										        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
										      </div>
										    </div>
										
										  </div>
										</div>	
										
										<!-- 뮤지션 수정 모달 -->
										<div id="modal_pic_mod" class="modal fade" role="dialog" align="left">
										  <div class="modal-dialog">
										  										
										    <!-- Modal content-->
										    <div class="modal-content">
										      <div class="modal-header">
										        <button type="button" class="close" data-dismiss="modal">&times;</button>
										        <h4 class="modal-title">사진을 변경</h4>
										      </div>
										      <div class="modal-body">
									          <div id="modal_image">
									          <table>
									          <tr>
									          <td id="pic_name_num">날짜</td>
									          <td>장소</td>
									          <td>게시자</td>
									          <td><input type="file" name="pic" value="파일 선택"></td>									        									        
									          </tr>
									          </table>
									          </div>
										      </div>
										      <div class="modal-footer">
										        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
										      </div>
										    </div>
										
										  </div>
										</div>																															
		
								</div>
													
					        <nav class="pagination"> 
					          <ul>
					            <li><a href="#">&laquo; 이전페이지</a></li>
					            <li><a href="#">1</a></li>
					            <li><a href="#">2</a></li>
					            <li><a href="#">3</a></li>
					            <li><a href="#">4</a></li>
					            <li class="current"><strong>5</strong></li>
					            <li><a href="#">6</a></li>
					            <li><a href="#">7</a></li>
					            <li><a href="#">8</a></li>
					            <li><a href="#">9</a></li>
					            <li><a href="#">다음페이지 &raquo;</a></li>
					          </ul>
					        </nav>
					
							<div id="search" align="center">   
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
	</div> <!-- hoc container -->
</div><!-- wrapper -->
<!------------------------------------------- footer------------------------------------- -->
<%@include file="../jsp/mpfooter.jsp"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>