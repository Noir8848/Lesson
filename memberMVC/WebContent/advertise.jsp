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
<script>

function exit(){	
	self.close();
}

function summit(){
	document.form.action = "<%=root%>/user";
	document.form.summit();
}

</script>
</head>
<body>
<form name="form" method="get" action="<%=root %>/user">
<input type="hidden" name="act" value="advertiseok">
<center>여기는 광고창입니다.</center>
<input type="checkbox" name="ad" value="ad"> 오늘은 그만 볼래요.
</form>
<button name="exit" id="exit" onclick="javascript:exit()">나가기</button>
</body>
</html>