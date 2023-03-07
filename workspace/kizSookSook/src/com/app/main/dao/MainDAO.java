package com.app.main.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.app.file.domain.FileVO;
import com.app.mybatis.config.MyBatisConfig;

public class MainDAO {
public SqlSession sqlSession;
	
	public MainDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
}
