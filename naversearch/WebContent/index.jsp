<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%String root = request.getContextPath();%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style type="text/css">
a:link {color: #929c95; font-size:12px; text-decoration:none;}
a:visited {color: #929c95; font-size:12px; text-decoration:none;}
a:active {color: #929c95; font-size:12px; text-decoration:none;}
a:hover {color: #929c95; font-size:12px; text-decoration:none;}

input {font-size: 15px;}
</style>
<script type="text/javascript" src="<%=root%>/js/httpRequest.js"></script>
<script type="text/javascript">
var checkFirst = true;
var firstKey = "";
var lastKeyword = "";
var loop = false;

function startsearch() {
	if(document.getElementById("keyword").value == "")
		checkFirst = true;
	
	if(checkFirst == true) {
		firstKey = "dbgo";
		loop = true;
	} else {
		firstKey = "";
	}
	checkFirst = false;
	setTimeout("sendkeyword();", 50);
}

function sendkeyword() {
	if(loop == false)
		return;
	var keyword = document.getElementById("keyword").value;
	if(keyword == "") {
		checkFirst = true;
		lastKeyword = "";
		hide();
	} else {
		lastKeyword = keyword;
		var params = "firstkey=" + firstKey + "&keyword=" + keyword;
		sendRequest("<%=root%>/auto", params, receiveResult, "GET");
	}
	//setTimeout("sendkeyword();", 50);
}

function receiveResult() {
	if(httpRequest.readyState == 4) {
		if(httpRequest.status == 200){
			var txt = httpRequest.responseText;
			var result = txt.split("|");
			var size = parseInt(result[0]);
			if(size != 0) {
				var resultHtml = "";
				var searchkw = result[1].split(",");
				var len = searchkw.length;
				for(var i=0;i<len;i++){
					resultHtml += "<a href=\"javascript:selectkeyword('" + searchkw[i] + "');\">";
					resultHtml += searchkw[i].replace(lastKeyword, '<font color="#ff0033"><b>' + lastKeyword + '</b></font>') + "</a><br>";
				}
				document.getElementById("searchlist").innerHTML = resultHtml;
				show();
			} else {
				hide();
				
			}
		}
	}
}

function selectkeyword(skw) {
	document.getElementById("keyword").value = skw;
	hide();
	loop = false;
}

function show() {
	var el = document.getElementById("search");
	if(el)
		el.style.display = "";	
}

function hide() {
	var el = document.getElementById("search");
	if(el)
		el.style.display = "asdf";	
}

function startrank() {
	sendRequest("<%=root%>/rank", null, receiverank, "GET")
}

function receiverank() {
	if(httpRequest.readyState == 4) {
		if(httpRequest.status == 200){
			var rankdata = httpRequest.responseXML;
			makerank(rankdata);
			window.setTimeout("startrank();", 5000);
		}
	}
}

function makerank(data){
	var view = document.getElementById("currentrank");
	if(view.childNodes.length != 0)
		view.removeChild(view.childNodes[0]);
	
	var outertable = document.createElement("table");
	outertable.setAttribute("width","160px");
	var ranklist = data.getElementsByTagName("keyworddata");
	var len = ranklist.length;
	for(var i=0;i<len;i++){
		var otr = document.createElement("tr");
		otr.setAttribute("onmouseover", "javascript:borderin('"+i+"');");
		otr.setAttribute("onmouseout", "javascript:borderout('"+i+"');");
		
		var otd = document.createElement("td");
		
		var innertable = document.createElement("table");
		innertable.setAttribute("id", "rank" + i);
		
		var itr = document.createElement("tr");
		
		var ranktd = document.createElement("td");
		ranktd.setAttribute("width", "20");
		var ranktxt = ranklist[i].getElementsByTagName("rank")[0].firstChild.data + ".";
		var ranknode = document.createTextNode(ranktxt);
		
		var keytd = document.createElement("td");
		ranktd.setAttribute("width", "20");
		var keytxt = ranklist[i].getElementsByTagName("keyword")[0].firstChild.data + ".";
		var keynode = document.createTextNode(keytxt);
		
		var atag = document.createElement("a");
		atag.setAttribute("href", "javascript:searchkeyword('" + keytxt + "')");
		
		var hittd = document.createElement("td");
		hittd.setAttribute("width", "20");
		var hittxt = ranklist[i].getElementsByTagName("hit")[0].firstChild.data + ".";
		var hitnode = document.createTextNode(hittxt);

		ranktd.appendChild(ranknode);
		atag.appendChild(keynode);
		keytd.appendChild(atag);
		hittd.appendChild(hitnode);
		
		itr.appendChild(ranktd);
		itr.appendChild(keytd);
		itr.appendChild(hittd);
		
		innertable.appendChild(itr);
		
		otd.appendChild(innertable);
		
		otr.appendChild(otd);
		
		outertable.appendChild(otr)		
	}	
	view.appendChild(outertable);
}

function borderin(idx){
	var selin = document.getElementById("rank"+ idx);
	selin.style.border = "#00cc66 solid 3px";
	selin.style.fontsize = "16px";
	selin.style.fontWeight = "bolder";
}

function searchkeyword(kw){
	document.getElementById("keyword").value = kw;
	document.searchform.submit();	
}

function borderout(idx){
	var selin = document.getElementById("rank"+ idx);
	selin.style.border = "#00cc66 solid 0px";
	selin.style.fontsize = "10px";
	selin.style.fontWeight = "lighter";	
}
</script>
</head>
<body onload="javascript:startrank();">
<center>
<h3>ajax를 이용한 검색어 자동 완성 &amp; 실시간 검색 순위</h3>
<form name="searchform" method="get" action="<%=root%>/searchkeyword">
<table>
<tr>
	<td valign="top">
	<table width="450">
	<tr>
		<td>
		<input type="text" name="keyword" id="keyword" style="border: #00cc66 solid 4px; height: 36px; width: 350px;" onkeyup="javascript:startsearch();">
		<input type="image" src="<%=root%>/img/find.png" style="vertical-align: middle;">
		</td>
	</tr>
	<tr>
		<td>
		<div id="search" style="display: none; border: #a4a6a5 solid 1px; width: 353px">
			<div id="searchlist"></div>			
		</div>
		</td>
	</tr>
	</table>
	</td>
	<td>
	<table width="170">
	<tr>
		<td>
			<div id="currentrank" style="border: #00cc66 solid 1px;"></div>
		</td>
	</tr>
	</table>
	</td>
</tr>
</table>
</form>
</center>
</body>
</html>