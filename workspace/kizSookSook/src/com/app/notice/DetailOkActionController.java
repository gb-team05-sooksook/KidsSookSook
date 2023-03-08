package com.app.notice;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.notice.dao.NoticeDAO;

public class DetailOkActionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		NoticeDAO noticeDAO = new NoticeDAO();
		Long noticeId = Long.valueOf(req.getParameter("noticeId"));
		Result result = new Result();
		req.setAttribute("notice", noticeDAO.select(noticeId));
		System.out.println(noticeId);
		
		result.setPath("/templates/notice/detail-page.jsp");
		
		
		return result;
	}

}
