package com.app.main.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.app.fieldTrip.domain.FieldTripDTO;
import com.app.mybatis.config.MyBatisConfig;

public class MainDAO {
public SqlSession sqlSession;
	
	public MainDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	public List<FieldTripDTO> fieldTripRecTop4(){
		return sqlSession.selectList("main.fieldTripRecTop4");
	}
	
	public List<FieldTripDTO> reviewRecTop4() {
		return sqlSession.selectList("main.reviewRecTop4");
	}
	
	public List<FieldTripDTO> payRecTop4() {
		return sqlSession.selectList("main.payRecTop4");
	}
}

