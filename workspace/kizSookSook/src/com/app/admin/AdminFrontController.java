package com.app.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Result;
import com.app.notice.GetNoticeActionController;
import com.app.notice.SearchActionController;

public class AdminFrontController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		String contextPath = req.getContextPath();
		String target = uri.replace(contextPath, "").split("\\.")[0];
		Result result = null;
		
		if(target.equals("/modifyBanner")) {
			result = new ModifyBannerController().execute(req, resp);	
		}else if(target.equals("/deleteBanner")) {
			result = new DeleteBannerController().execute(req, resp);
		}else if(target.equals("/selectAllInquiryAction")) {
			result = new SelectAllInquiryActionController().execute(req, resp);
		}else if(target.equals("/answer")) {
			result = new AnswerController().execute(req, resp);
		}else if(target.equals("/deleteFieldTripAction")) {
			result = new DeleteFieldTripActionController().execute(req, resp);
		}else if(target.equals("/modifyMemberAction")) {
			result = new ModifyMemberActionController().execute(req, resp);
		}else if(target.equals("/deleteMemberAction")) {
			result = new DeleteMemberActionController().execute(req, resp);
		}else if(target.equals("/selectInstitutionMemberAction")) {
			result = new SelectInstitutionMemberActionController().execute(req, resp);
		}else if(target.equals("/selectMemberAction")) {
			result = new SelectMemberActionController().execute(req, resp);
		}else if(target.equals("/addNotice")) {
			result = new AddNoticeController().execute(req, resp);
		}else if(target.equals("/modifyNoticeAction")) {
			result = new ModifyNoticeActionController().execute(req, resp);
		}else if(target.equals("/deleteNoticeAction")) {
			result = new DeleteNoticeActionController().execute(req, resp);
		}else if(target.equals("/refundAction")) {
			result = new RefundActionController().execute(req, resp);
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
