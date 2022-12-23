<%@page import="vo.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	// 컨트롤러에서 공유한 모델 데이터 셋팅
	Board board = (Board)(request.getAttribute("board"));
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>MVC BOARD ONE</title>
	</head>
	
	<body>
		<h1>MVC 게시글 보기</h1>
		<%
			
		%>
		<div>
			<a href="<%=request.getContextPath()%>/BoardListController">홈으로</a>
		</div>
		<table border="1">
			<tr>
				<th>제목</th>
				<td>
					<%=board.getTitle()%>
				</td>
			</tr>
			<tr>
				<th>내용</th>
				<td>
					<%=board.getContent() %>
				</td>
			</tr>
		</table>
		<div>
			<a href='<%=request.getContextPath()%>/ModifyBoardFormController?no=<%=board.getNo()%>'>수정</a>
			<a href='<%=request.getContextPath()%>/RemoveBoardActionController?no=<%=board.getNo()%>'>삭제</a>
		</div>
	</body>
</html>