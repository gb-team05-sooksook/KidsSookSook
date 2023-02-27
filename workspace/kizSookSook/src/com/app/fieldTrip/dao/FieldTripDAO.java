package com.app.fieldTrip.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.app.fieldTrip.domain.FieldTripDTO;
import com.app.mybatis.config.MyBatisConfig;

public class FieldTripDAO {
	public SqlSession sqlSession;
	
	public FieldTripDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}

	public List<FieldTripDTO> selectCategoryAll(String categoryId) {
		List<FieldTripDTO> fields = sqlSession.selectList("fieldTrip.selectCategoryAll", categoryId);
		
		return fields;
	}
}
