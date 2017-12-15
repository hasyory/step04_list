<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test07.jsp</title>
</head>
<body>
<%
	//조건부로 다른 내용의 javascript 출력하기
	boolean isWait=false;
%>
	<%if(isWait){ %>
	<script>alert("기다리라했지!")</script>
	<%}else{ %>
	<script>alert("봉인은 끝났다! 가랏!")</script>
	<%} %>

</body>
</html>