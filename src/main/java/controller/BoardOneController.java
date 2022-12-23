package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.BoardService;
import vo.Board;

@WebServlet("/BoardOneController")
public class BoardOneController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		// 유효성 검사 
		if(request.getParameter("no") == null) {
			response.sendRedirect(request.getContextPath() + "/BoardListController");
			System.out.println("BoardOne 유효성 검사X");
			return;
		}
	
		// 값 받아오기
		int no = Integer.parseInt(request.getParameter("no"));
		
		BoardService boardService = new BoardService();
		Board board = boardService.getBoardOne(no);
		
		// view와 공유할 모델 데이터 성정
		request.setAttribute("board", board);
		
		// view 연결
		// RequestDispatcher
		// 1) include => 둘 다 뷰가 있을때
		// 2) forward
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/view/boardOne.jsp");
		rd.forward(request, response);
	}
}