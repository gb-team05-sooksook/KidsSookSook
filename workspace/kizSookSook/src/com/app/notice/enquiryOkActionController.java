package com.app.notice;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.notice.dao.EnquiryDAO;
import com.app.notice.dao.EnquiryFileDAO;
import com.app.notice.domain.CustomerEnquiryVO;
import com.app.notice.domain.EnquiryFileVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class enquiryOkActionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		System.out.println("okaction L25");
		req.setCharacterEncoding("UTF-8");
		EnquiryDAO enquiryDAO = new EnquiryDAO();
		CustomerEnquiryVO customerEnquiryVO = new CustomerEnquiryVO();
		EnquiryFileVO enquiryFileVO = new EnquiryFileVO();
		EnquiryFileDAO enquiryFileDAO = new EnquiryFileDAO(); 
	
		String uploadPath = req.getSession().getServletContext().getRealPath("/") + "upload/";
		int fileSize = 1024 * 1024 * 5; //5M
		Long noticeCurrentSequence = 0L;
		
		MultipartRequest multipartRequest = new MultipartRequest(req, uploadPath, fileSize, "UTF-8", new DefaultFileRenamePolicy());
		
		customerEnquiryVO.setUserEmail(multipartRequest.getParameter("setUserEmail"));
		customerEnquiryVO.setCustomerEnquiryTitle(multipartRequest.getParameter("customerEnquiryTitle"));		
		customerEnquiryVO.setCustomerEnquiryContent(multipartRequest.getParameter("customerEnquiryContent"));
		
		customerEnquiryVO.setUserId((Long)req.getSession().getAttribute("userId"));
		
		enquiryDAO.insert(customerEnquiryVO);
		
		noticeCurrentSequence = enquiryDAO.getCurrentSequence();
		
		
		Result result = new Result();

		result.setPath(req.getContextPath() + "/enquiry.notice");
		result.setRedirect(true);
		
		return result;
	}
	


}
