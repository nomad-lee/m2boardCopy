<%@page import="service.BoardService"%>
<%@page import="vo.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	Board board = (Board)(request.getAttribute("board"));
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>MVC Modify Board Form</title>
	</head>
	
	<body>
		<h1>MVC 게시글 수정</h1>
		<%
			
		%>
		<div>
			<a href="<%=request.getContextPath()%>/BoardListController">홈으로</a>
		</div>
		
		<form action="<%=request.getContextPath()%>/ModifyBoardActionController?no=<%=board.getNo()%>" method="post">
			<table border="1">
				<tr>
					<th>제목</th>
					<td>
						<input type="text" name="title" style="width:90%;" value="<%=board.getTitle()%>">
					</td>
				</tr>
				<tr>
					<th>내용</th>
					<td>
						<textarea rows="10" cols="100" name="content" ><%=board.getContent() %></textarea>
					</td>
				</tr>
			</table>
			<button type="submit">수정</button>
		</form>
	</body>
</html>