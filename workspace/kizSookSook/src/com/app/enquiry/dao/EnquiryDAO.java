package com.app.enquiry.dao;

import org.apache.ibatis.session.SqlSession;

import com.app.enquiry.domain.CustomerEnquiryVO;
import com.app.mybatis.config.MyBatisConfig;

public class EnquiryDAO {
	public SqlSession sqlSession;
	
	public EnquiryDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	// 문의 등록
		public void insert(CustomerEnquiryVO customerEnquiryVO) {
			sqlSession.insert("enquiry.insert", customerEnquiryVO);
		}
		
		// 문의 등록번호 조회
		public Long getCurrentSequence() {
			return sqlSession.selectOne("notice.getCurrentSequence");
			
		}

}
