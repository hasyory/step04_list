<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	//폼전송되는 파라미터 추출하기
    	String id=request.getParameter("id");
    	String pwd=request.getParameter("pwd");
    	//DB엣 해당 정보가 유효한정보인지 확인한다.
    	boolean isValid=false;
    	if(id.equals("gura") && pwd.equals("1234")){//맞는 정보라면
    		isValid=true;
    	}
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<%if(isValid){ %>
	<p><strong><%=id %></strong>님 로그인 되었습니다.</p>
	<%}else{ %>
	<p>아이디 혹은 비밀번호가 잘못되었습니다. 다시 확인해 보세요.</p>
	<a href="index.html">로그인하기</a>
	<%} %>
</body>
</html>