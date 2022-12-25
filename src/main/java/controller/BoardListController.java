package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.BoardService;
import vo.Board;
// Model(일반 클래스) - Controller(Servlet클래스 상속) - View(JSP)
@WebServlet("/BoardListController")
public class BoardListController extends HttpServlet {	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BoardService boardService = new BoardService();
		ArrayList<Board> list = boardService.getBoardList();
		
		// view와 공유할 모델 데이터 성정
		request.setAttribute("list", list);
		
		// view 연결
		// RequestDispatcher
		// 1) include => 둘 다 뷰가 있을때
		// 2) forward
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/view/boardList.jsp");
		rd.forward(request, response);
		// rd에 있는 보드리스트는 본인이 가지고 있는 request,response 대신 여기서 설정한것 사용
		// 컨트롤러 jsp로 만들 이유가 없다 => servlet으로 생성
	}

}