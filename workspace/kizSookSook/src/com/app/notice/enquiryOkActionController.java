package com.app.notice;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.notice.dao.EnquiryFileDAO;
import com.app.notice.dao.NoticeDAO;
import com.app.notice.domain.CustomerEnquiryVO;
import com.app.notice.domain.EnquiryFileVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class enquiryOkActionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		NoticeDAO noticeDAO = new NoticeDAO();
		CustomerEnquiryVO customerEnquiryVO = new CustomerEnquiryVO();
		EnquiryFileVO enquiryFileVO = new EnquiryFileVO();
		EnquiryFileDAO enquiryFileDAO = new EnquiryFileDAO(); 
		Result result = new Result();
		
		String uploadPath = req.getSession().getServletContext().getRealPath("/") + "upload/";
		int fileSize = 1024 * 1024 * 5; //5M
		Long noticeCurrentSequence = 0L;
		
		MultipartRequest multipartRequest = new MultipartRequest(req, uploadPath, fileSize, "UTF-8", new DefaultFileRenamePolicy());
		
		customerEnquiryVO.setCustomerEnquiryTitle(multipartRequest.getParameter("customerEnquiryTitle"));
		customerEnquiryVO.setCustomerEnquiryContent(multipartRequest.getParameter("customerEnquiryContent"));
		customerEnquiryVO.setUserEmail(multipartRequest.getParameter("setUserEmail"));
		
		customerEnquiryVO.setUserId((Long)req.getSession().getAttribute("userId"));
		
		noticeDAO.insert(customerEnquiryVO);
		
		noticeCurrentSequence = noticeDAO.getCurrentSequence();
		
		Enumeration<String> fileNames = multipartRequest.getFileNames();
	
		while(fileNames.hasMoreElements()) {
			String fileName = fileNames.nextElement();
			String fileOriginalName = multipartRequest.getOriginalFileName(fileName);
			String fileSystemName = multipartRequest.getFilesystemName(fileName);
		
			if(fileOriginalName == null) {continue;}
			
			enquiryFileVO.setEnquiryFileOrgName(fileOriginalName);
			enquiryFileVO.setEnquiryFileSystemName(fileSystemName);
			enquiryFileVO.setEnquiryId(noticeCurrentSequence);
			
			enquiryFileDAO.fileInsert(enquiryFileVO);
		}
		
		result.setPath(req.getContextPath() + "/templates/customerCenter/enquiry.notice");
		result.setRedirect(true);
		
		return result;
	}

}
