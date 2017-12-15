<%@page import="test.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<%
	//폼 전송되는 내용을 추출해서
	String name=request.getParameter("name");
	String addr=request.getParameter("addr");
	
	//MemberDto에 담아서
	MemberDto dto=new MemberDto();
	
	
	
%>
</body>
</html>