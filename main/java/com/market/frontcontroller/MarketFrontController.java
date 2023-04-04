package com.market.frontcontroller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.market.action.ActionForward;
import com.market.login.MarketLoginAction;
import com.market.mypage.InfoConfirmAction;

@WebServlet("*.lo")
public class MarketFrontController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String requestURI = req.getRequestURI();
		ActionForward forward = null;
		
		switch (requestURI) {
		case "/market/MarketLogin.lo":
			// 로그인
			forward = new MarketLoginAction().execute(req, resp);
			break;
		case "/market/MarketLogout.lo":
			// 로그아웃 시, 세션 user 정보 삭제
			req.getSession().removeAttribute("user");
			forward = new ActionForward(true, "http://localhost:8080/");
			break;
		case "/mypage/PrivacyModify.lo":
			forward = new InfoConfirmAction().execute(req, resp);
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
