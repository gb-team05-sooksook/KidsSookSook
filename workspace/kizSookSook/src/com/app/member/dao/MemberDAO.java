package com.app.member.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.app.member.domain.MemberVO;
import com.app.mybatis.config.MyBatisConfig;

public class MemberDAO {
	public SqlSession sqlSession;
	
	public MemberDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}

	public Long getTotal() {
		return sqlSession.selectOne("member.getTotal");
	}

	public List<MemberVO> selectAll(Map<String, Object> searchMap) {
		return sqlSession.selectList("member.selectAll", searchMap);
	}

	
}
