package com.app.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.member.dao.MemberDAO;

public class LoginActionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		MemberDAO memberDAO = new MemberDAO();
		HttpSession session = req.getSession();
		boolean autoLogin = Boolean.valueOf(req.getParameter("auto-login"));
		String userIdentification = req.getParameter("userIdentification");
		String userPassword = req.getParameter("userPassword");
		Long userId = memberDAO.login(userIdentification, userPassword);
		String path = null;
		Result result = new Result();
		
		
		if(userId == null) {
			userIdentification = String.valueOf(req.getParameter("userIdentification"));
			userPassword = String.valueOf(req.getParameter("userPassword"));
			userId = memberDAO.login(userIdentification, userPassword);
			System.out.println("들왓나1");
		}
		
		if(userId != null) {
			if(autoLogin) {
				Cookie userIdentificationCookie = new Cookie("userIdentification", userIdentification);
				Cookie userPasswordCookie = new Cookie("userPassword", userPassword);
				resp.addCookie(userIdentificationCookie);
				resp.addCookie(userPasswordCookie);
				System.out.println("들왓나14");
			}
			session.setAttribute("userId", userId);
		}else {
			path = req.getContextPath() + "/login.member?login=false";
		}
		result.setPath(path);
		result.setRedirect(true);
		return result;
	}

}
