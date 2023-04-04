package com.market.board;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.market.action.Action;
import com.market.action.ActionForward;
import com.market.board.dao.ReplyBean;
import com.market.board.dao.ReplyDAO;

public class BoardAddReplyAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		
		ActionForward forward = new ActionForward();
		
		ReplyDAO rdao = new ReplyDAO();
		ReplyBean rbean = new ReplyBean();
		
		
		rbean.setBoardnum(Integer.parseInt(req.getParameter("boardnum")));
		rbean.setPassword(req.getParameter("password"));
		rbean.setReplycontents(req.getParameter("replycontents"));
		rbean.setUsername(req.getParameter("username"));
		
		if(rdao.addReply(rbean)) {
			// 등록 성공
			// redirect 방식
			forward.setRedirect(true);
			forward.setPath("/board/BoardDetail.bo?boardnum=" + rbean.getBoardnum());
		} else {
			// 등록 실패
			try {
				// forward 방식
				forward.setRedirect(false);
				PrintWriter out = resp.getWriter();
				out.println("<script>alert('오류발생'); history.back();</script>");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return forward;
	}

}
