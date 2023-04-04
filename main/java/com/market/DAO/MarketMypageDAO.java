package com.market.DAO;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.market.mybatis.SqlMapConfig;

public class MarketMypageDAO {
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlsession;
	
	public MarketMypageDAO() {
		sqlsession = factory.openSession(true);
	}
	
	public boolean confirmInfo(Map<String, String> datas) {
		boolean result = false;
		if( (Integer) sqlsession.selectOne("Mypage.confirm",datas) != 0) {
			result = true;
		}
		return result;
	}
}
