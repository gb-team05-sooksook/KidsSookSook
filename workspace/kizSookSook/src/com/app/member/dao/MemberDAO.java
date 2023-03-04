package com.app.member.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.app.member.domain.MemberVO;
import com.app.mybatis.config.MyBatisConfig;

public class MemberDAO {
	public SqlSession sqlSession;
	
	public MemberDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}

	public Long getTotal(Map<String, Object> searchMap) {
		return sqlSession.selectOne("member.getTotal", searchMap);
	}

	public List<MemberVO> selectMemberAll(Map<String, Object> searchMap) {
		return sqlSession.selectList("member.selectMemberAll", searchMap);
	}

	public List<MemberVO> selectInstitutionAll(Map<String, Object> searchMap) {
		return new ArrayList<MemberVO>();
	}
	
	public MemberVO selectMember(Long memberId) {
		return sqlSession.selectOne("member.selectMember", memberId);
	}
	
	public void insertUser(MemberVO memberVO) {
		sqlSession.insert("member.insertUser", memberVO);
	}
	
	public void insertMember(MemberVO memberVO) {
		sqlSession.insert("member.insertMember", memberVO);
	}
	
	public void insertInstitution(MemberVO memberVO) {
		sqlSession.insert("member.insertInstitution", memberVO);
	}
	
	public void updateUser(MemberVO memberVO) {
		sqlSession.update("member.updateUser", memberVO);
	}
	
	public void updateMember(MemberVO memberVO) {
		sqlSession.update("member.updateMember", memberVO);
	}

	public void deleteUser(Long userId) {
		sqlSession.delete("member.deleteUser", userId);
	}

	public void deleteMember(Long userId) {
		sqlSession.delete("member.deleteMember", userId);
	}
	
	// 중복검사
	public boolean checkId(String memberIdentification) {
		return sqlSession.selectOne("member.checkId", memberIdentification);
	}
	// 로그인
	public Long login(String userIdentification, String userPassword) {
		Map<String, String> loginMap = new HashMap<String, String>();
		loginMap.put("userIdentification", userIdentification);
		loginMap.put("userPassword", userPassword);
		return sqlSession.selectOne("member.login", loginMap);
	}
	
}
