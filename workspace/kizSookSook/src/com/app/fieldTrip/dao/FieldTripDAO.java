package com.app.fieldTrip.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.app.fieldTrip.domain.FieldTripDTO;
import com.app.mybatis.config.MyBatisConfig;

public class FieldTripDAO {
	public SqlSession sqlSession;
	
	public FieldTripDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}

	public List<FieldTripDTO> selectCategoryAll(Map<String, Object> pageMap) {
		return sqlSession.selectList("fieldTrip.selectCategoryAll", pageMap);
	}

	public Long getTotal(Long categoryId) {
		return sqlSession.selectOne("fieldTrip.getTotal", categoryId);
	}
}
