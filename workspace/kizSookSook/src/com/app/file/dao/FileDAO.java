package com.app.file.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.app.file.domain.FileVO;
import com.app.mybatis.config.MyBatisConfig;

public class FileDAO {
public SqlSession sqlSession;
	
	public FileDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public void insertBannerFile(FileVO fileVO) {
		System.out.println("들어감");
		sqlSession.insert("file.insertBannerFile", fileVO);
	}
	
	public List<FileVO> selectBannerFiles() {
		return sqlSession.selectList("file.selectBannerFiles");
	}
	
	public void updateBannerFile(FileVO fileVO) {
		sqlSession.update("file.updateBannerFile", fileVO);
	}
	
	public void insertEnquiryFile(FileVO fileVO) {
		System.out.println("들어감3");
		sqlSession.insert("file.insertEnquiryFile", fileVO);
	}
}
