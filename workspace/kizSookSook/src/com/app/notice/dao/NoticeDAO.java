package com.app.notice.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.app.mybatis.config.MyBatisConfig;
import com.app.notice.domain.NoticeVO;

public class NoticeDAO {
	public SqlSession sqlSession;
	
	public NoticeDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}

	public List<NoticeVO> selectAll(Map<String, Object> searchMap){
		return sqlSession.selectList("notice.selectAll", searchMap);
	}

	public Long getTotal() {
		return sqlSession.selectOne("notice.getTotal");
	}

	public void insert(NoticeVO noticeVO) {
		sqlSession.insert("notice.insert", noticeVO);
	}
	
	public void update(NoticeVO noticeVO) {
		sqlSession.update("notice.update", noticeVO);
	}
	
	public void delete(Long noticeId) {
		sqlSession.delete("notice.delete", noticeId);
	}
}


