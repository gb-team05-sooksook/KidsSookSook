package com.app.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Result;

public class MemberFrontController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		String contextPath = req.getContextPath();
		String target = uri.replace(contextPath, "").split("\\.")[0];
		Result result = null;
		
		if(target.equals("/joinInstitution")) {
			result = new Result();
			result.setPath("/html/joinLogin/join/joinPage_institution.jsp");
			
		}else if(target.equals("/joinNormal")) {
			result = new Result();
			result.setPath("/html/joinLogin/join/joinPage_normal.jsp");
			
		}else if(target.equals("/joinNormalAction")) {
			result = new JoinNormalActionController().execute(req, resp);
					 
		}else if(target.equals("/joinInstitutionAction")) {
			result = new JoinInstitutionActionController().execute(req, resp); 
			
		}else if(target.equals("/checkIdAction")) {
			new CheckIdActionController().execute(req, resp);
			
		}else if(target.equals("/login")) {
			result = new LoginController().execute(req, resp);
			
		}else if(target.equals("/loginAction")) {
			result = new LoginActionController().execute(req, resp);
			
		}else if(target.equals("/logout")) {
			result = new LogoutController().execute(req, resp);
			
		}else if(target.equals("/sendEmailAction")) {
			result = new SendEmailActionController().execute(req, resp);
			
		}else if(target.equals("/changePwAction")) {
			result = new ChangePwActionController().execute(req, resp);
			
		}else if(target.equals("/findIdAction")) {
			result = new FindIdActionController().execute(req, resp);
			
		}else if(target.equals("/findPwAction")) {
			result = new FindPwActionController().execute(req, resp);
			
		}else {
			
		}
		
		
		if(result != null) {
			if(result.isRedirect()) {
				resp.sendRedirect(result.getPath());
			}else {
				req.getRequestDispatcher(result.getPath()).forward(req, resp);
			}
		}
		
	
	}
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		doGet(req, resp);
	}
}
