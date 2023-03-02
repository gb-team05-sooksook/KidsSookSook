package com.app.pay.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.app.mybatis.config.MyBatisConfig;
import com.app.pay.domain.PaymentDTO;

public class PayDAO {
	public SqlSession sqlSession;
	
	public PayDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}

	public List<PaymentDTO> selectAll(Map<String, Object> searchMap) {
		return sqlSession.selectList("payment.selectAll", searchMap);
	}
	
	public PaymentDTO select(Long userId	) {
		return sqlSession.selectOne("payment.select", userId);
	}

	public Long getTotal() {
		return sqlSession.selectOne("payment.getTotal");
	}

	public void delete(Long paymentId) {
		sqlSession.delete("payment.delete", paymentId);
	}
	
}
