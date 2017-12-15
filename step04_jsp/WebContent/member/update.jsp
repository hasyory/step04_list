<%@page import="test.dao.MemberDao"%>
<%@page import="test.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정하기</title>
</head>
<body>
<%
	int num=Integer.parseInt(request.getParameter("num"));
	String name=request.getParameter("name");
	String addr=request.getParameter("addr");
	
	MemberDto dto=new MemberDto(num,name,addr);
	MemberDao dao=MemberDao.getInstance();
	boolean isSuccess=dao.update(dto);
%>
	<script>
	if(isSuccess){
		alert("수정완료되었습니다.");
	}else{
		alert("수정에 실패했습니다.");
	}
	location.href='list.jsp';
	</script>
</body>
</html>