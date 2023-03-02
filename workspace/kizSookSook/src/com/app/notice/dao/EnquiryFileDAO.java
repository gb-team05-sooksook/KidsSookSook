package com.app.notice.dao;

import org.apache.ibatis.session.SqlSession;

import com.app.mybatis.config.MyBatisConfig;
import com.app.notice.domain.EnquiryFileVO;

public class EnquiryFileDAO {
	public SqlSession sqlSession;
	
	public EnquiryFileDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}

	// 첨부파일 추가
	public void fileInsert(EnquiryFileVO enquiryFileVO) {
		sqlSession.insert("notice.fileInsert", enquiryFileVO);
		
	}
}
