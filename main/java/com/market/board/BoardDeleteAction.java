package com.market.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.market.action.Action;
import com.market.action.ActionForward;
import com.market.board.dao.BoardDAO;

public class BoardDeleteAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		BoardDAO bDAO = new BoardDAO();
		ActionForward forward = new ActionForward();
		int result = bDAO.deleteBoard(Integer.parseInt(req.getParameter("boardnum")));

		req.setAttribute("deleteResult", result);
		
		forward.setRedirect(false);
		forward.setPath("/board/BoardList.bo");
		
		return forward;
	}

}
