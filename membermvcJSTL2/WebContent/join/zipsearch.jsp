<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/commons/public.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/memberjsp/css/style.css" type="text/css">
<script type="text/javascript">
function dongcheck(){
	if(document.getElementById("dong").value == "") {
		alert("검색 동 입력!");
		return;
	} else {
		document.zipform.action = "${root}/user";
		document.zipform.submit();
	}
}

function selectzip(zipcode, address){
	opener.document.getElementById("zipcode").value = zipcode;
	opener.document.getElementById("addr1").value = address;
	
	self.close();
}
</script>
</head>
<body>
<center>
<form name="zipform" method="get" action="">
<input type="hidden" name="act" value="zipsearch">
<h3>우편번호검색</h3>
<table width="350">
<tr>
	<td class="td3">검색할동을 입력하세요<br>(예: 역삼동, 신촌)</td>
</tr>
<tr>
	<td class="td4">
	<input type="text" name="dong" id="dong" onkeypress="javascript:if(event.keyCode == 13){ dongcheck(); }">
	<input type="button" value="검색" id="btnsearch" onclick="javascript:dongcheck();">
	</td>
</tr>
<c:if test="${searchDong == null}">

<tr>
	<td class="td4">
	동이름을 정확히 입력하세요.
	</td>
</tr>

</c:if>


<c:if test="${searchDong != null}">
<c:if test="${zipList.size() != 0}"><!-- 프로퍼티 get set 지우고 소문자 -->
<c:forEach var="zip" items="${zipList}" varStatus="i">
<tr>
	<td class="td4">
	<a href="javascript:selectzip('${zip.zipcode}', '${zip.address}');">
	${i.count}. ${zip.zipcode} ${zip.address}
	</a>
	</td>
</tr>
</c:forEach>
</c:if>
<c:if test="">
<tr>
	<td class="td4">
	<b>${searchDong}</b>에 대한 검색 결과가 없습니다.
	</td>
</tr>
	</c:if>
</c:if>

</table>
</form>
</center>
</body>
</html>