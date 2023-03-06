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
		if(target.equals("/joinPage_normal")) {
			result = new Result();
			result.setPath("/templates/joinLogin/join/joinPage_normal.jsp");
		
		//기관회원가입으로 이동	
		}else if(target.equals("/joinPage_institution")) {
			result = new Result();
			result.setPath("/templates/joinLogin/join/joinPage_institution.jsp");
		
		//secondJoin으로 이동
		}else if(target.equals("/secondJoin")) {
			result = new Result();
			result.setPath("/templates/joinLogin/join/secondJoin.jsp");
		
		//firstJoin으로 이동	
		}else if(target.equals("/firstJoin")) {
			result = new Result();
			result.setPath("/templates/joinLogin/join/firstJoin.jsp");
		
		// 아이디찾기로 이동		 
		}else if(target.equals("/idFind")) {
			result = new Result();
			result.setPath("/templates/joinLogin/findIdPw/idFind.jsp");
		
		// 비밀번호찾기로 이동	
		}else if(target.equals("/passwordFind")) {
			result = new Result();
			result.setPath("/templates/joinLogin/findIdPw/passwordFind.jsp");
			
		//일반회원 가입
		}else if(target.equals("/joinPage_normalAction")) {
			result = new JoinNormalActionController().execute(req, resp);
					 
		//일반Join	
		}else if(target.equals("/joinPage_normal")) {
			result = new Result();
			result.setPath("/templates/joinLogin/join/joinPage_normal.jsp");
		
		// 기관회원 가입
		}else if(target.equals("/joinPage_institutionAction")) {
			result = new JoinInstitutionActionController().execute(req, resp); 
		
		//기관Join
		}else if(target.equals("/joinPage_institution")) {
			result = new Result();
			result.setPath("/templates/joinLogin/join/joinPage_institution.jsp");
		
		// 아이디 중복검사
		}else if(target.equals("/checkIdAction")) {
			new CheckIdActionController().execute(req, resp);
		
		//로그아웃
		}else if(target.equals("/logout")) {
			result = new LogoutController().execute(req, resp);
		
		//로그인Action	
		}else if(target.equals("/loginAction")) {
			System.out.println("들왓나12");
			result = new LoginActionController().execute(req, resp);
			System.out.println("들왓나13");
		//로그인
		}else if(target.equals("/login")) {
			result = new Result();
			System.out.println("들왓나16");
			result.setPath("/templates/main/main.jsp");
			
		}else if(target.equals("/sendEmailAction")) {
			result = new SendEmailActionController().execute(req, resp);
			
		}else if(target.equals("/changePwAction")) {
			result = new ChangePwActionController().execute(req, resp);
		
		// 아이디찾기 action
		}else if(target.equals("/findIdAction")) {
			System.out.println("findId");
			result = new FindIdActionController().execute(req, resp);
		
		// 아이디찾기	
		}else if(target.equals("/findId")) {
			result = new Result();
			result.setPath("/templates/joinLogin/findIdPw/idFind.jsp");
		
		// 비밀번호찾기 
		}else if(target.equals("/findPwAction")) {
			result = new FindPwActionController().execute(req, resp);
			
		}else if(target.equals("/findPw")) {
			result = new Result();
			result.setPath("/templates/joinLogin/findIdPw/passwordFind.jsp");
		
		}else {
			System.out.println(target);
			System.out.println("안됌?");
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
