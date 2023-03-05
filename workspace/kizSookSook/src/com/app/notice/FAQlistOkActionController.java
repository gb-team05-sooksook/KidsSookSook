package com.app.notice;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.enquiry.dao.EnquiryDAO;

public class FAQlistOkActionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		
		EnquiryDAO enquiryDAO = new EnquiryDAO();
		
		
		return null;
	}

}
