package com.app.main;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Result;
import com.app.mypage.PurchaseListActionController;
import com.app.mypage.ReviewController;
import com.app.pay.PayController;

public class MainFrontController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		String contextPath = req.getContextPath();
		String target = uri.replace(contextPath, "").split("\\.")[0];
		Result result = null;
		
		
//		메인페이지 이동
		if(target.equals("/templates/main/main")){
			result = new Result();
			result.setPath("/templates/main/main.jsp");
//		고객센터 이동
		}else if(target.equals("/templates/customerCenter/customer-main")) {
			result = new Result();
			result.setPath("/templates/customerCenter/customer-main.jsp");
		
			
			
			
		
		}else if(target.equals("/rankListAction")) {
			result = new RankListActionController().execute(req, resp);
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
