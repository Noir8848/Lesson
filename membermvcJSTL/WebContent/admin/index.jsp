<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/commons/public.jsp" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="${root}/js/httpRequest.js"></script>
<script type="text/javascript">
function memberlist() {
	var key = document.getElementById("key").value;
	var word = document.getElementById("word").value;
	//alert(key + "   " + word);
	var params = "act=list&key=" + key + "&word=" + word;
	alert(params);
	sendRequest("${root}/admin", params, getlist, "GET");
	document.getElementById("word").value = '';
}

function getlist() {
	var view = document.getElementById("memberlist");
	if(httpRequest.readyState == 4) {//처리완료
		if(httpRequest.status == 200) {
			var list = httpRequest.responseText;
			view.innerHTML = list;
		} else {
			alert("처리중 문제발생");
		}
	} else {//처리중
		view.innerHTML = '<img src="./img/loading.jpg" width="50">';
	}
}
</script>
</head>
<body>
<center>
<h3>관리자 페이지</h3>
<a href="${root}/admin?act=xmllist">회원목록(xml)</a><br>
<a href="javascript:memberlist();">회원목록</a><br>
<h3>회원목록</h3>
<table width="1000">
<tr>
	<td align="right">
	<select name="key" id="key">
		<option value="id">아이디	
		<option value="name">이름	
		<option value="address">주소	
	</select>
	<input type="text" name="word" id="word">
	<input type="button" value="검색" onclick="javascript:memberlist();">
	</td>
</tr>
</table>
<table border="1" width="1000">
<tr>
	<th width="70">이름</th>
	<th width="70">아이디</th>
	<th width="160">이메일</th>
	<th width="120">전화번호</th>
	<th>주소</th>
	<th width="100">가입일</th>
</tr>
<tbody id="memberlist"></tbody>
</table>
</center>
</body>
</html>



