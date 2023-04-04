package com.market.board.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.market.mybatis.SqlMapConfig;

public class BoardDAO {
	
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlsession;
	
	public BoardDAO() {
		sqlsession = factory.openSession(true);
	}
	
	public boolean insertBoard(BoardBean board) {
		boolean result = false;
		if( sqlsession.insert("Board.insertBoard",board) != 0 ) {
			result = true;
		}
		return result;
	}
	public List<BoardBean> listBoard(int startRow, int endRow) {

		Map<String, Integer> map = new HashMap<>();
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		
		return sqlsession.selectList("Board.listBoard", map);
	}

	public BoardBean showDetail(int boardnum ) {
		return sqlsession.selectOne("Board.deatilBoard", boardnum);
	}

	public int deleteBoard(int boardnum) {
		return sqlsession.delete("Board.deleteBoard", boardnum);
	}

	public int countBoard() {
		return sqlsession.selectOne("Board.countBoard");
	}

	public int updateReadcount(int boardnum) {
		return sqlsession.update("Board.updateReadcount", boardnum);
	}
}
