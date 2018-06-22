<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String root = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="<%=root%>/js/httpRequest.js"></script>
<script type="text/javascript">
function memberlist() {
	var key = document.getElementById("key").value;
	var word = document.getElementById("key").value;
	var params = "act=list" + "&key=" + key + "&word=" + word;
	sendRequest("<%=root%>/admin", params, getlist, "GET");
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
		<a href="<%=root%>/admin?act=xmllist">회원목록(x.m.l.)</a><br> 
		<a href="javascript:memberlist();">회원목록</a><br>
		<h3>회원목록</h3>
		<table width="100">
			<tr>
				<td width="100">이름</td>
				<td width="100">아이디</td>
				<td width="100">이메일</td>
				<td width="100">전화번호</td>
				<th>주소</th>
				<td width="100">가입일</td>
			</tr>
			<tbody id="memberlist"></tbody>
		</table>


	</center>
</body>
</html>