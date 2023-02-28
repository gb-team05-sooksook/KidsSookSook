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
		System.out.println(target);
		
		//일반회원가입으로 이동
		if(target.equals("/templates/joinLogin/join/joinPage_normal")) {
			result = new Result();
			result.setPath("/templates/joinLogin/join/joinPage_normal.jsp");
		
		//기관회원가입으로 이동	
		}else if(target.equals("/templates/joinLogin/join/joinPage_institution")) {
			result = new Result();
			result.setPath("/templates/joinLogin/join/joinPage_institution.jsp");
		
		//secondJoin으로 이동
		}else if(target.equals("/templates/joinLogin/join/secondJoin")) {
			result = new Result();
			result.setPath("/templates/joinLogin/join/secondJoin.jsp");
					 
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
		
		// 아이디찾기로 이동
		}else if(target.equals("/templates/joinLogin/findIdPw/idFind")) {
			result = new Result();
			result.setPath("/templates/joinLogin/findIdPw/idFind.jsp");
		
		// 비밀번호찾기로 이동	
		}else if(target.equals("/templates/joinLogin/findIdPw/passwordFind")) {
			result = new Result();
			result.setPath("/templates/joinLogin/findIdPw/passwordFind.jsp");
			
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
