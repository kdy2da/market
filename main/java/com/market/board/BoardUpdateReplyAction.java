package com.market.board;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.market.action.Action;
import com.market.action.ActionForward;
import com.market.board.dao.ReplyDAO;

public class BoardUpdateReplyAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ReplyDAO rdao = new ReplyDAO();
		int boardnum = Integer.parseInt(req.getParameter("boardnum"));
		boolean result = rdao.updateReply(
				Integer.parseInt(req.getParameter("replynum"))
				, req.getParameter("replycontents"));
		ActionForward forward = new ActionForward();
		if(result) {
			// 성공
			forward.setRedirect(true);
			forward.setPath("/board/BoardDetail.bo?boardnum="+boardnum);
		} else {
			// 실패
			try {
				// forward 방식
				forward.setRedirect(false);
				PrintWriter out = resp.getWriter();
				out.println("<script>alert('댓글수정 발생'); history.back();</script>");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return forward;
	}

}
