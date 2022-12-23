package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.BoardService;


@WebServlet("/RemoveBoardActionController")
public class RemoveBoardActionController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		// 유효성 검사 
		if(request.getParameter("no") == null) {
			response.sendRedirect(request.getContextPath() + "/BoardListController");
			System.out.println("RemoveBoardAction 유효성X");
			return;
		}
		
		// 값 받아오기
		int no = Integer.parseInt(request.getParameter("no"));
		
		BoardService boardService = new BoardService();
		int result = boardService.removeBoard(no);
		
		// 결과
		if(result == 1) {
			// one으로 이동
			System.out.println("삭제성공");
			response.sendRedirect(request.getContextPath()+"/BoardListController"); 
		} else {
			// 폼이동
			System.out.println("삭제실패");
			response.sendRedirect(request.getContextPath()+"/BoardListOneController?no="+no);
		}
	}

}