<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
<title>test01.jsp</title>
</head>
<body>
<%
	//여기는 서블릿의 service 메소드 안쪽이라고 생각하면 된다.
	//jsp는 해석된 결과가 출력
	//html은 그대로 보여짐
	int num=1;
	String name="김구라";
	String addr="노량진";
%>
	<p>번호 : <strong><%=num %></strong></p>
	<p>이름 : <strong><%=name %></strong></p>
	<p>주소 : <strong><%=addr %></strong></p>
</body>
</html>