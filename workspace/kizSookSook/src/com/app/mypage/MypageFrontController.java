package com.app.mypage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Result;

public class MypageFrontController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		String contextPath = req.getContextPath();
		String target = uri.replace(contextPath, "").split("\\.")[0];
		Result result = null;
		
		if(target.equals("/purchaseListAction")) {
			result = new PurchaseListActionController().execute(req, resp);	
		}else if(target.equals("/review")) {
			result = new ReviewController().execute(req, resp);
		}else if(target.equals("/connectCategory")) {
			result = new ConnectCategoryController().execute(req, resp);
		}else if(target.equals("/cashCheckAction")) {
			result = new CashCheckActionController().execute(req, resp);
		}else if(target.equals("/changeInfoAction")) {
			result = new ChangeInfoActionController().execute(req, resp);
		}else if(target.equals("/reviewListCheckAction")) {
			result = new ReviewListCheckActionController().execute(req, resp);
		}else if(target.equals("/enquiryListCheckAction")) {
			result = new EnquiryListCheckActionController().execute(req, resp);
		}else if(target.equals("/deleteAccountAction")) {
			result = new DeleteAccountActionController().execute(req, resp);
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
