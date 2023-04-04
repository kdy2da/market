package com.market.board.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.market.mybatis.SqlMapConfig;

public class ReplyDAO {
	
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlsession;
	
	public ReplyDAO() {
		sqlsession = factory.openSession(true);
	}
	
	public boolean addReply(ReplyBean replyBean) {
		boolean result = false;
		if(sqlsession.insert("Reply.addReply", replyBean) != 0) {
			result = true;
		}
		return result;
	}
	public List<ReplyBean> allReply(int boardnum) {
		return sqlsession.selectList("Reply.allReply", boardnum);
	}

	public boolean deleteReply(int replynum) {
		boolean result = false;
		if(sqlsession.delete("Reply.deleteReply", replynum) != 0) {
			result = true;
		}
		return result;
	}

	public boolean updateReply(int replynum, String replycontents) {
		
		boolean result = false;

		Map<String, Object> map = new HashMap<>();
		map.put("replynum", replynum);
		map.put("replycontents", replycontents);
		
		if(sqlsession.update("Reply.updateReply", map) != 0) {
			result = true;
		}
		return result;
	}
}
