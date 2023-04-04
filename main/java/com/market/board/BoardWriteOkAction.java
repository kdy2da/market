package com.market.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.market.action.Action;
import com.market.action.ActionForward;
import com.market.board.dao.BoardBean;
import com.market.board.dao.BoardDAO;

public class BoardWriteOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		
		BoardBean board = new BoardBean();
		BoardDAO bdao = new BoardDAO();
		ActionForward forward = null;
		
		board.setBoardtitle(req.getParameter("boardtitle"));
		board.setBoardcontents(req.getParameter("boardcontents"));
		board.setUsername(req.getParameter("username"));
        
		if( bdao.insertBoard(board) ) {
			forward = new ActionForward(true, "/board/BoardList.bo?flag=true"); 
		} else {
			forward = new ActionForward(true, "/board/BoardList.bo?flag=false");
		}
		
		return forward;
	}
	// 글 등록
	
	
}
