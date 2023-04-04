package com.market.board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.market.action.ActionForward;

@WebServlet("*.bo")
public class BoardFrontController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	protected void doProcess(HttpServletRequest req
			, HttpServletResponse resp) throws IOException, ServletException {
		
		// 요청 받은 페이지를 ActionForward Class 를 통해 설정
		String requestURI = req.getRequestURI();
		ActionForward forward = null;
		
		switch (requestURI) {
			case "/board/BoardWrite.bo":
				forward = new ActionForward(true, "/board/boardwrite.jsp");
				break;
			case "/board/BoardWriteOk.bo":
				forward = new BoardWriteOkAction().execute(req, resp);
				break;
			case "/board/BoardList.bo":
				forward = new BoardListAction().execute(req, resp);
				break;
			case "/board/BoardDetail.bo":
				forward = new BoardDetailAction().execute(req, resp);
				break;
			case "/board/BoardDelete.bo":
				forward = new BoardDeleteAction().execute(req, resp);
				break;	
			case "/board/AddReply.bo":
				forward = new BoardAddReplyAction().execute(req, resp);
				break;	
			case "/board/DeleteReply.bo":
				forward = new BoardDeleteReplyAction().execute(req, resp);
				break;	
			case "/board/UpdateReply.bo":
				forward = new BoardUpdateReplyAction().execute(req, resp);
				break;	
			default:
				break;
		}
		
		// redirect / forward 방식에 따라 요청 페이지에 처리 방법 분할
		if( forward != null ) {
			if( forward.isRedirect() ) {
				// true : redirect
				resp.sendRedirect(forward.getPath());
			} else {
				// false : forward
				RequestDispatcher disp = req.getRequestDispatcher(forward.getPath());
				disp.forward(req, resp);
			}
		}
	}
}
