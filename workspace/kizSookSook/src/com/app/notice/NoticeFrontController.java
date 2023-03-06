package com.app.notice;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Result;

public class NoticeFrontController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		String contextPath = req.getContextPath();
		String target = uri.replace(contextPath, "").split("\\.")[0];
		Result result = null;
		/* System.out.println(target); */
		
		if(target.equals("/enquiry")) {
			result = new Result();
			result.setPath("/templates/customerCenter/enquiry.jsp");
			System.out.println(target);
			
		}else if(target.equals("/customer-main")) {
			result = new Result();
			result.setPath("/templates/customerCenter/customer-main.jsp");
			
		}else if(target.equals("/termsOfService")) {
			result = new Result();
			result.setPath("/templates/customerCenter/termsOfService.jsp");
			
		}else if(target.equals("/institutionFAQ")) {
			result = new Result();
			result.setPath("/templates/customerCenter/institutionFAQ.jsp");
			
		}else if(target.equals("/enquiryOkAction")) {
			result = new enquiryOkActionController().execute(req, resp);
			System.out.println("23. " + target);
			
		}else if(target.equals("/FAQlistOkAction")) {
			System.out.println("2. " + target);
			result = new FAQlistOkActionController().execute(req, resp);
		
		}else if(target.equals("/NoticelistOkAction")) {
			System.out.println("7. " + target);
			result = new NoticelistOkActionController().execute(req, resp);
		}else {
			System.out.println("3. " + target);
			System.err.println("cant find path");
		}
		
		if(result != null) {
			if(result.isRedirect()) {
				System.out.println("Redirect");
				resp.sendRedirect(result.getPath());
			}else {
				System.out.println("forward");
				req.getRequestDispatcher(result.getPath()).forward(req, resp);
			}
		}
	}
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}