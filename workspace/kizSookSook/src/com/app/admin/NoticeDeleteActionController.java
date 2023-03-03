package com.app.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.notice.dao.NoticeDAO;

public class NoticeDeleteActionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		NoticeDAO noticeDAO = new NoticeDAO();
		Result result = new Result();
		
		Long noticeId = Long.valueOf(req.getParameter("noticeId"));
		
		noticeDAO.delete(noticeId);
		
		result.setPath(req.getContextPath() + "/notice.admin");
		result.setRedirect(true);
		
		return result;
	}

}
