package com.market.login;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.market.DAO.MarketLoginDAO;
import com.market.DTO.MarketUserDTO;
import com.market.action.Action;
import com.market.action.ActionForward;

public class MarketLoginAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		
		ActionForward forward = new ActionForward();
		
		String userid = req.getParameter("id");
		String userpw = req.getParameter("password");
		System.out.println(userid + " " + userpw);
		
		Map<String, String> datas = new HashMap<>();
		datas.put("userid", userid);
		datas.put("userpw", userpw);
		
		MarketLoginDAO dao = new MarketLoginDAO();
		HttpSession session = null;
		
		MarketUserDTO user = dao.loginMarket(datas); 
		
		if(user == null) {
			// 로그인 실패
			forward.setPath("http://localhost:8080?success=false");
		} else {
			// 로그인 성공
			// session 에 로그인 정보 저장
			session = req.getSession();
			session.setAttribute("user", user);
			System.out.println(session.getMaxInactiveInterval());
			
			forward.setPath("http://localhost:8080?success=true");
		}

		// path 및 forward 여부 
		forward.setRedirect(true);
		
		return forward;
	}

}
