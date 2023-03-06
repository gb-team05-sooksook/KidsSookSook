package com.app.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;

public class LoginController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		String userIdentification = null, userPassword = null;
		boolean check = false;
		
		if(req.getHeader("Cookie") != null) {
			Cookie[] cookies = req.getCookies();
			for(Cookie cookie : cookies) {
				if(cookie.getName().equals("userIdentification")) {
					userIdentification = cookie.getValue();
					check = true;
				}else if(cookie.getName().equals("userPassword")) {
					userPassword = cookie.getValue();
					check = true;
				}
			}
		}
		
		if(check) {
			req.setAttribute("userIdentification", userIdentification);
			req.setAttribute("userPassword", userPassword);
			result.setPath("/loginAction.member");
		}else {
			result.setPath("/login.jsp");
		}
		return result;
	}

}
