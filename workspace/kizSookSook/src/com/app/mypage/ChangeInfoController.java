package com.app.mypage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.mypage.dao.MyPageDAO;

public class ChangeInfoController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		MyPageDAO myPageDAO = new MyPageDAO();
		Result result = new Result();
//		Long userId = (Long)req.getSession().getAttribute("userId");
		
		/**/
		Long userId = 1L;
		
		req.setAttribute("member", myPageDAO.selectMemberInfo(userId));
		
		result.setPath("/templates/mypage/mypage.jsp");
		
		return result;
	}

}
