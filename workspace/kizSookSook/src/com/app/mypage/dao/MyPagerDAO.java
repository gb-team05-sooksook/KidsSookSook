package com.app.mypage.dao;

import org.apache.ibatis.session.SqlSession;

import com.app.mybatis.config.MyBatisConfig;

public class MyPagerDAO {
	public SqlSession sqlSession;
	
	public MyPagerDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}

	
}
