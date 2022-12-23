package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.BoardService;

@WebServlet("/ModifyBoardActionController")
public class ModifyBoardActionController extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		// 유효성 검사 
		if(request.getParameter("title") == null || request.getParameter("title").equals("")
			|| request.getParameter("content") == null || request.getParameter("content").equals("")
			|| request.getParameter("no") == null) {
			response.sendRedirect(request.getContextPath() + "/model1/m1BoardList.jsp");
			System.out.println("ModifyBoardAction 유효성 검사 실패");
			return;
		}
		
		// 값 받아오기
		int no = Integer.parseInt(request.getParameter("no"));
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		// db연결
		int result = 0;
		BoardService boardService = new BoardService();
		result = boardService.modifyBoard(no, title, content);
		
		// 결과
		if(result == 1) {
			// 리스트로 이동
			System.out.println("수정성공");
			response.sendRedirect(request.getContextPath()+"/BoardListController"); 
		} else {
			// 폼이동
			System.out.println("수정실패");
			response.sendRedirect(request.getContextPath()+"/ModifyBoardFormController?no="+no);
		}
	}

}