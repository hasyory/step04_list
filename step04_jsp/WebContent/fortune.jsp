<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	//서블릿으로 바뀌었을때 service() 메소드 안쪽이라고 생각하면 된다.
    	String fortuneToday="조오오올라 추워요~";
    	
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>오늘의 운세 페이지</title>
</head>
<body>
<%-- 꺽쇠가 없는 부분은 클라이언트에게 그대로 전달됨~
window-preference-emmit가서 jsp추가 ㄱ
꺽쇠는 아무곳에나 넣어도됨 
여기넣어두됨 
<!--%
    	//서블릿으로 바뀌었을때 service() 메소드 안쪽이라고 생각하면 된다.
    	String fortuneToday="조오오올라 추워요~";
    %>
    사용하기 이전에 선언만 되어있으면 됨.해석하는 순서만 달라짐
    기본객체는 선언안해줘도 뒤에 점찍으면 가능한거나옴
    개발영역에서 컨트롤 스페이스바누르면 가능한 기본객체들 출력됨
 --%>
	<p>오늘의 운세 : <strong><%=fortuneToday %></strong></p>
</body>
</html>