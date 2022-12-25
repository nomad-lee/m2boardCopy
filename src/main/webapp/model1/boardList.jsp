<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="vo.*"%>

<!-- view -->

<%
	//컨드롤러에서 공유한 모델데이터를 추출
	ArrayList<Board> list=(ArrayList<Board>)(request.getAttribute("list")); //형변환도 해줘야지
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>M2 BOARD LIST</title>
</head>
<body>
	<h1>M2 BOARD LIST</h1>
	<div>
		<a href="<%=request.getContextPath()%>/mvc/addBoardController">글입력</a> <!-- 위치가 내가 갈 controller url -->
	</div>

	<table>
		<thead>
			<tr>
				<td>No</td>
				<td>Title</td>

			</tr>
		</thead>
		<tbody>
			<%
			for (Board b : list) {
			%>
			<tr>
				<td><%=b.getNo()%></td>
				<td><a
					href='<%=request.getContextPath()%>/mvc/boardOneController?no=<%=b.getNo()%>'>
						<%=b.getTitle()%></a> <!-- controller url적어주기 -->
				</td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>
</body>
</html>