package com.market.mypage;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.market.DAO.MarketMypageDAO;
import com.market.action.Action;
import com.market.action.ActionForward;

public class InfoConfirmAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		
		ActionForward forward = new ActionForward();
		
		String userid = req.getParameter("userId");
		String userpw = req.getParameter("password");
		
		Map<String, String> datas = new HashMap<>();
		datas.put("userid", userid);
		datas.put("userpw", userpw);
		
		MarketMypageDAO mDAO = new MarketMypageDAO();
		if(mDAO.confirmInfo(datas)) {
			// 비밀번호 재확인 성공시
			forward.setRedirect(true);
			forward.setPath("http://localhost:8080/mypage/privacy_modify.jsp");
		} else {
			// 비밀번호 재확인 실패시
			try {
				PrintWriter out = resp.getWriter();
				out.println("<script>alert('비밀번호를 확인해주세요.');history.back();</script>");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
		return forward;
	}

}
