<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mvcBoardOne</title>
</head>
<body>
	<h1>Board One</h1>
	<table border="1">
		<tr>
			<td>title</td>
			<td>${board.title}</td>
		</tr>
		<tr>
			<td>content</td>
			<td>${board.content}</td>
		</tr>
	</table>
	<div>
		<a href='${pageContext.request.contextPath}/ModifyBoardFormController?no=${board.no}'>수정</a>
		<a href='${pageContext.request.contextPath}/RemoveBoardActionController?no=${board.no}'>삭제</a>
	</div>
</body>
</html>