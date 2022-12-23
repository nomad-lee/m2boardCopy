<%@page import="vo.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="service.*" %>
<%@page import="dao.*" %>
<%
//컨드롤러에서 공유한 모델데이터를 추출
Board b=(Board)request.getAttribute("b");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<td>No</td>
			<td>Title</td>
			<td>Content</td>
		</tr>
		<tr>
           	<td><%=b.getNo()%></td>
           	<td><%=b.getTitle() %></td>
           	<td><%=b.getContent() %></td>
		</tr>
	</table>
	<div>
		<a href='<%=request.getContextPath()%>/mvc/updateBoardController?no=<%=b.getNo()%>'>수정</a>
		<a href='<%=request.getContextPath()%>/mvc/deleteBoardActionController?no=<%=b.getNo()%>'>삭제</a>		
	</div>	
</body>
</html>