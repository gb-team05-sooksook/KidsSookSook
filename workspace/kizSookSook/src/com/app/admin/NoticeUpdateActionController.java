package com.app.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.notice.dao.NoticeDAO;
import com.app.notice.domain.NoticeVO;

public class NoticeUpdateActionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
req.setCharacterEncoding("UTF-8");
		
		NoticeVO noticeVO = new NoticeVO();
		NoticeDAO noticeDAO = new NoticeDAO();
		Result result = new Result();
		
		noticeVO.setNoticeId(Long.valueOf(req.getParameter("noticeId")));
		noticeVO.setNoticeTitle(req.getParameter("title"));
		noticeVO.setNoticeContext(req.getParameter("content"));
		noticeVO.setNoticeAlterDate(req.getParameter("writtenDate"));
		
		noticeDAO.update(noticeVO);
		
		result.setPath(req.getContextPath() + "/notice.admin");
		result.setRedirect(true);
		
		return result;
	}

}
