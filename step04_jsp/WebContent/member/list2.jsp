<%@page import="test.dto.MemberDto"%>
<%@page import="test.dao.MemberDao"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 목록보기</title>
<link rel="stylesheet" href="../css/bootstrap.css" />
<script src="../js/jquery-3.2.1.js"></script>
<style type="text/css">
.show{display:block}
.noShow{display:none}
</style>
<%
	request.setCharacterEncoding("utf-8");

	List<MemberDto> list=MemberDao.getInstance().getList();
	int num=Integer.parseInt(request.getParameter("num"));
	String name=request.getParameter("name");
	String addr=request.getParameter("addr");
			
	MemberDto dto=new MemberDto(num,name,addr);
	MemberDao dao=MemberDao.getInstance();
	int isDel=Integer.parseInt(request.getParameter("delete"));
	int isUpdate=Integer.parseInt(request.getParameter("update"));
	
	boolean isSuccess=true;
	if(isUpdate==1){
		isSuccess=dao.update(dto);
	}
	if(isDel==1){
		isSuccess=dao.delete(num);
		
	}

%>
</head>
<body>
	<h3>회원목록</h3>
	<table class="table">
		<thead>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>주소</th>
				<th>삭제</th>
				<th>수정</th>
			</tr>
		</thead>
		<tbody>
			<%for(MemberDto tmp:list){ %>
			<tr>
				<td><%=tmp.getNum() %></td>
				<td><%=tmp.getName() %></td>
				<td><%=tmp.getAddr() %></td>
				<td><a href="list.jsp?delete=1&num=<%=tmp.getNum()%>"><span class="glyphicon glyphicon-trash">삭제</span></a></td>
				<td><a href="list.jsp?update=1&num=<%=tmp.getNum() %>"><span class="glyphicon glyphicon-pencil">수정</span></a></td>
			</tr>
			<%} %>
		</tbody>
	</table>
	<div <%if(isUpdate==1){ %>class="show"<%}else{ %> class="noShow"<%} %>>
		<form action='update.jsp' method='post'>
			<label for="num">번호</label>
			<input type="hidden" name="num" value='<%=dto.getNum()%>'/>
			<label for="name">이름</label>
			<input type="text" name="name" value='<%=dto.getName()%>'/>
			<label for="addr">주소</label>
			<input type="text" name="addr" value='<%=dto.getAddr()%>'/>
			<button class="btn btn-default" type="submit">수정</button>
		</form>
	</div>
	
	<script>
	if(<%=isDel%>==1){
		if(isSuccess){
			alert("회원정보를 삭제했습니다.")
		}else{
			alert("삭제에 실패했습니다.")
		}
	}
	</script>
</body>
</html>