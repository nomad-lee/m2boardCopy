<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!-- 
C-M-V
V만 있는 모델은 존재하지 않음 그래서 C-V
C-M 이건 주로 액션 주로 끝날때 redirect --- 다른 컨트롤러 호출
 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="<%=request.getContextPath()%>/mvc/addBoardActionController" method="post"><!-- controller url적어주기 -->
	<table>
		<tr>
			<td>Title</td>
			<td><input type="text" name="title"></td>
		</tr>
		<tr>
			<td>Content</td>
			<td><textarea cols="30" rows="10" name="content"></textarea></td>
		</tr>
	</table>
	<button type="submit">추가</button>
	</form>
</body>
</html>