package com.app.enquiry.dao;

import org.apache.ibatis.session.SqlSession;

import com.app.notice.domain.CustomerEnquiryVO;

public class EnquiryDAO {
	public SqlSession sqlSession;
	
	// 문의 등록
		public void insert(CustomerEnquiryVO customerEnquiryVO) {
			sqlSession.insert("notice.insert", customerEnquiryVO);
		}
		
		// 문의 등록번호 조회
		public Long getCurrentSequence() {
			return sqlSession.selectOne("notice.getCurrentSequence");
			
		}

}
