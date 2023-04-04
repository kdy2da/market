package com.market.DAO;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.market.DTO.MarketUserDTO;
import com.market.mybatis.SqlMapConfig;

public class MarketLoginDAO {
	
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlsession;
	
	public MarketLoginDAO() {
		sqlsession = factory.openSession(true);
	}
	
	public MarketUserDTO loginMarket(Map<String, String> datas) {
		// parameter : userid / userpw
		// result : 해당 user 정보 <MarketUserDTO 타입>
		return sqlsession.selectOne("Market.login",datas);
	}
	
}
