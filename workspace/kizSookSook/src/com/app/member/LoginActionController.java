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
			System.out.println("들왓나LoginAction1");
			userIdentification = String.valueOf(req.getParameter("userIdentification"));
			userPassword = String.valueOf(req.getParameter("userPassword"));
			userId = memberDAO.login(userIdentification, userPassword);
			
		}
		
		if(userId != null) {
			if(autoLogin) {
				System.out.println("들왓나LoginAction2");
				Cookie userIdentificationCookie = new Cookie("userIdentification", userIdentification);
				Cookie userPasswordCookie = new Cookie("userPassword", userPassword);
				resp.addCookie(userIdentificationCookie);
				resp.addCookie(userPasswordCookie);
			}
			System.out.println("들왓나LoginAction3");
			session.setAttribute("userId", userId);
			path = req.getContextPath() + "/main.main";
		}else {
			System.out.println("들왓나LoginAction4");
			path = req.getContextPath() + "/main.main?login=false";
		}
		result.setPath(path);
		result.setRedirect(true);
		return result;
	}

}
