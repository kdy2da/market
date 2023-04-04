package com.market.board;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.market.action.Action;
import com.market.action.ActionForward;
import com.market.board.dao.BoardDAO;

public class BoardListAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		BoardDAO bDAO = new BoardDAO();
		int totalCnt =  bDAO.countBoard();
		// 페이징 처리 시작
		// 현재 넘겨받은 페이지
		String temp = req.getParameter("page");
		int page = 0;
		
		if(temp == null) {
			page = 1;
		} else {
			page = Integer.parseInt(temp);
		}
		
//		page = page < 1 ? 1 : page;
//		page = page > endPage ? endPage : page;
		
		// page 1 이면 rownum 1 ~ 10
		// page 2 이면 rownum 11 ~ 20
		int pageSize = 10;
		int endRow = pageSize * page;
		int startRow = endRow - pageSize + 1 ;
		
		int startPage = (page-1)/pageSize * pageSize + 1;
		int endPage = startPage + pageSize - 1;
		int totalPage = (totalCnt - 1) / pageSize + 1;
		
		endPage = endPage > totalPage ? totalPage : endPage;
		

		
		// dao 를 통해 결과값을 가지고 온다.
		req.setAttribute("boardList", bDAO.listBoard(startRow, endRow));
		req.setAttribute("boardCNT", totalCnt);
		
		req.setAttribute("totalPage", totalPage);
		req.setAttribute("nowPage", page);
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		
		forward.setRedirect(false);
		forward.setPath("/board/boardList.jsp");			
		return forward;
	}

}
