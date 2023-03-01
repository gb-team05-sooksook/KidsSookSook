package com.app.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Result;

public class AdminFrontController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		String contextPath = req.getContextPath();
		String target = uri.replace(contextPath, "").split("\\.")[0];
		Result result = null;
		
		if(target.equals("/memberInfo")) {
			result = new Result();
			result.setPath(req.getContextPath() + "/memberInfoAction.admin");
		} else if(target.equals("/memberInfoAction")) {
			result = new MemberInfoActionController().execute(req, resp);
		} else if(target.equals("/searchMemberAction")) {
			result = new SearchMemberActionController().execute(req, resp);
		} else if(target.equals("/searchSelectedMemberAction")) {
			result = new SearchSelectedMemberActionController().execute(req, resp);
		} else if(target.equals("/upadateMembersAction")) {
			result = new UpadateMembersActionController().execute(req, resp);
		} else if(target.equals("/deleteUserAction")) {
			result = new DeleteUserActionController().execute(req, resp);
		} 
		else {
			
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