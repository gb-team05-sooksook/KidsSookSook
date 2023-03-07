package com.app.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.member.dao.MemberDAO;

public class ChangePwActionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		MemberDAO memberDAO = new MemberDAO();
		String changePassword =null;
		
		String originEmail = req.getParameter("userEmail");
		System.out.println(originEmail);
		changePassword = req.getParameter("newPassword");
		System.out.println(changePassword);
		memberDAO.changePw(originEmail, changePassword);
		
		result.setPath(req.getContextPath() + "/main.main");
		result.setRedirect(true);
		
		return result;
	}

}
