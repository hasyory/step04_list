<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test09.jsp</title>
<link rel="stylesheet" href="css/bootstrap.css" />
</head>
<body>
<%
	String activeTab="one";
	//String activeTab="two";
	//String activeTab="three";
%>
	<div class="container">
		<h3>동적으로 active tab바꾸는 연습</h3>
		<ul class="nav nav-tabs">
			<%--<%if(activeTab=="one"){ 이렇게쓰면 안될수도 있기때문에 equals를 쓰도록하세요~ --%>
			<%if(activeTab.equals("one")){ %>
			<li class="active"><a href="#">하나</a></li>
			<li><a href="#">두울</a></li>
			<li><a href="#">세엣</a></li>
			<%}else if(activeTab=="two"){ %>
			<li><a href="#">하나</a></li>
			<li class="active"><a href="#">두울</a></li>
			<li><a href="#">세엣</a></li>
			<%}else if(activeTab=="three"){ %>
			<li><a href="#">하나</a></li>
			<li><a href="#">두울</a></li>
			<li class="active"><a href="#">세엣</a></li>
			<%} %>		
		</ul>
		<h3>동적으로 active tab 바꾸는 연습을 간단하게 하면</h3>
		<ul>
			<li <%if(activeTab.equals("one")) { %> class="active"<% } %>><a href="#">하나</a></li>
			<li <%if(activeTab.equals("two")) { %> class="active"<% } %>><a href="#">두울</a></li>
			<li <%if(activeTab.equals("three")) { %> class="active"<% } %>><a href="#">세엣</a></li>
		</ul>
	</div>
</body>
</html>