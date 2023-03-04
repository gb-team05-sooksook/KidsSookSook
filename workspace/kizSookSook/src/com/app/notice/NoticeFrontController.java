package com.app.notice;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Result;
import com.app.mypage.PurchaseListActionController;
import com.app.mypage.ReviewController;

public class NoticeFrontController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		String contextPath = req.getContextPath();
		String target = uri.replace(contextPath, "").split("\\.")[0];
		Result result = null;
		System.out.println(target);
		
		
		  if(target.equals("/enquiryOkAction")) {
			System.out.println("2. " + target);
			result = new enquiryOkActionController().execute(req, resp);
			System.out.println("2323. " + target);
		}else if(target.equals("/getFAQAction")) {
			System.out.println("2. " + target);
			result = new GetFAQActionController().execute(req, resp);
		}else if(target.equals("/enquiry")) {
			System.out.println("2. " + target);
			result = new Result();
			result.setPath("/templates/customerCenter/enquiry.jsp");
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
