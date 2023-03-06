package com.app.mypage.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.app.enquiry.domain.CustomerEnquiryVO;
import com.app.fieldTrip.domain.FieldTripDTO;
import com.app.member.domain.CashVO;
import com.app.mybatis.config.MyBatisConfig;

public class MyPageDAO {
	public SqlSession sqlSession;
	
	public MyPageDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}

//	체험학습 구매 목록 조회
	public List<FieldTripDTO> selectPurchaseList(Map<String, Object> searchMap) {
		return sqlSession.selectList("mypage.selectPurchaseList", searchMap);
	}
	
//	내정보 불러오기
//	public MemberDTO myInfoAllSelect(Long userId) {
//		return sqlSession.selectOne("member.myInfoAllSelect", userId);
//	}
	
	/*
	 * public BoardDTO select(Long boardId) { return
	 * sqlSession.selectOne("board.select", boardId); }
	 */
	
//	문의사항목록조회
	public List<CustomerEnquiryVO> selectEnquiryList(Map<String, Object> searchMap) {
		return sqlSession.selectList("mypage.selectEnquiryList", searchMap);
	}
	
	
//	내 캐쉬 조회
	 public List<CashVO> selectMyCash(Map<String, Object> searchMap) {
		 return sqlSession.selectList("mypage.selectMyCash", searchMap);
	}
	 
}
