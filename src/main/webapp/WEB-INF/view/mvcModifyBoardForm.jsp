<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mvcModifyBoardForm</title>
</head>
<body>
	<h1>Modify Board</h1>
	<div>
		<a href="${pageContext.request.contextPath}/BoardListController">홈으로</a>
	</div>
	<form action="${pageContext.request.contextPath}/ModifyBoardActionController" method="post">
		<table border="1">
			<tr>
				<th>title</th>
				<td>
					<input type="hidden" name="no" value="${board.no}">
					<input type="text" name="title" value="${board.title}">
				</td>
			</tr>
			<tr>
				<th>content</th>
				<td>
					<textarea rows="5" cols="50" name="content">${board.content}</textarea>
				</td>
			</tr>
		</table>
		<button type="submit">수정</button>
	</form>
</body>
</html>