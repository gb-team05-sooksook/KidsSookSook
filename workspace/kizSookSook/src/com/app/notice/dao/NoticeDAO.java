package com.app.notice.dao;

import org.apache.ibatis.session.SqlSession;

import com.app.mybatis.config.MyBatisConfig;
import com.app.notice.domain.CustomerEnquiryVO;

public class NoticeDAO {
	public SqlSession sqlSession;
	
	public NoticeDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}

	// 문의 등록
	public void insert(CustomerEnquiryVO customerEnquiryVO) {
		sqlSession.insert("notice.insert", customerEnquiryVO);
	}
	
	// 문의 등록번호 조회
	public Long getCurrentSequence() {
		return sqlSession.selectOne("notice.getCurrentSequence");
		
	}
}
