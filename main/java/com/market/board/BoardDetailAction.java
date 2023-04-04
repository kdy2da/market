package com.market.board;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.market.action.Action;
import com.market.action.ActionForward;
import com.market.board.dao.BoardBean;
import com.market.board.dao.BoardDAO;
import com.market.board.dao.ReplyBean;
import com.market.board.dao.ReplyDAO;

public class BoardDetailAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		BoardDAO bDAO = new BoardDAO();
		
		// 게시글 보여주기
		int boardnum = Integer.parseInt(req.getParameter("boardnum"));
//		int nowPage = Integer.parseInt(req.getParameter("page"));
		bDAO.updateReadcount(boardnum);
		BoardBean detailBoard = bDAO.showDetail(boardnum);
		
		// 댓글 보여주기
		ReplyDAO rDAO = new ReplyDAO();
		List<ReplyBean> list = rDAO.allReply(boardnum);		
		
		
		req.setAttribute("detailBoard", detailBoard);
		req.setAttribute("allReply", list);
//		req.setAttribute("nowPage", nowPage);
		forward.setRedirect(false);
		forward.setPath("/board/boardDetail.jsp");
		return forward;
	}
	
}
