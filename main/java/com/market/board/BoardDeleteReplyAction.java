package com.market.board;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.market.action.Action;
import com.market.action.ActionForward;
import com.market.board.dao.ReplyDAO;

public class BoardDeleteReplyAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		
		ActionForward forward = new ActionForward();
		int boardnum = Integer.parseInt(req.getParameter("boardnum"));
		ReplyDAO rdao = new ReplyDAO();
		if(rdao.deleteReply(Integer.parseInt(req.getParameter("replynum")))) {
			forward.setPath("/board/BoardDetail.bo?boardnum="+boardnum);
			forward.setRedirect(true);
		} else {
			try {
				PrintWriter out = resp.getWriter();
				out.println("<script>alert('댓글삭제오류');history.back();</script>");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return forward;
	}

}
