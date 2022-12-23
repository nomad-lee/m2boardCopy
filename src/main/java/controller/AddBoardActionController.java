package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.BoardService;


@WebServlet("/AddBoardActionController")
public class AddBoardActionController extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		// 유효성 검사 
		if(request.getParameter("title") == null || request.getParameter("title").equals("") || request.getParameter("content") == null || request.getParameter("content").equals("") ) {
			response.sendRedirect(request.getContextPath() + "/AddBoardFormController");
			System.out.println("AddBoardAction 유효성X");
			return;
		}
		// 값 받아오기
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		int result = 0;
		BoardService boardService = new BoardService();
		result = boardService.addBoard(content, title);
		
		// 결과
		if(result == 1) {
			// 리스트로 이동
			System.out.println("입력성공");
			response.sendRedirect(request.getContextPath()+"/BoardListController"); 
		} else {
			// 폼이동
			System.out.println("입력실패");
			response.sendRedirect(request.getContextPath()+"/AddBoardFormController");
		}
	}
}