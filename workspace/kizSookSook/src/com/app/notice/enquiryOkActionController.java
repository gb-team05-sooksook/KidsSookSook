package com.app.notice;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.enquiry.dao.EnquiryDAO;
import com.app.enquiry.domain.CustomerEnquiryVO;
import com.app.file.dao.FileDAO;
import com.app.file.domain.FileVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class enquiryOkActionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		req.setCharacterEncoding("UTF-8");
		CustomerEnquiryVO customerEnquiryVO = new CustomerEnquiryVO();
		FileVO FileVO = new FileVO();
		FileDAO FileDAO = new FileDAO(); 
//		EnquiryFileDAO enquiryFileDAO = new EnquiryFileDAO(); 
	
		String uploadPath = "C:/gb_0900_mes/JSP_project/kidsSookSook/workspace/kizSookSook/WebContent/upload";
		FileVO fileVO = new FileVO();
		FileDAO fileDAO = new FileDAO(); 
		EnquiryDAO enquiryDAO = new EnquiryDAO();
	
//		String  = req.getSession().getServletContext().getRealPath("/") + "upload/";
		int fileSize = 1024 * 1024 * 5; //5M
		Long noticeCurrentSequence = 0L;
		
		MultipartRequest multipartRequest = new MultipartRequest(req, uploadPath, fileSize, "UTF-8", new DefaultFileRenamePolicy());
		/* String enquiryId = req.getParameter("enquiryId"); */
		
		customerEnquiryVO.setUserEmail(multipartRequest.getParameter("userEmail"));
		customerEnquiryVO.setEnquiryTitle(multipartRequest.getParameter("customerEnquiryTitle"));		
		customerEnquiryVO.setEnquiryContent(multipartRequest.getParameter("customerEnquiryContent"));
		customerEnquiryVO.setUserId((Long)req.getSession().getAttribute("userId"));
		
		
		enquiryDAO.insert(customerEnquiryVO);
		
		noticeCurrentSequence = enquiryDAO.getCurrentSequence();
		
	Enumeration<String> fileNames = multipartRequest.getFileNames();
		
		while(fileNames.hasMoreElements()) {
//			파일의 전체 속성
			String fileName = fileNames.nextElement();
			String fileOriginalName = multipartRequest.getOriginalFileName(fileName);
			String fileSystemName = multipartRequest.getFilesystemName(fileName);
			
			if(fileOriginalName == null) {continue;}
			
			fileVO.setFileOriginalName(fileOriginalName);
			fileVO.setFileSystemName(fileSystemName);
//			fileVO.setTargetId(Long.valueOf(enquiryId));
			
			FileDAO.insertEnquiryFile(fileVO);
		}
		
		Result result = new Result();

		result.setPath(req.getContextPath() + "/customer-main.notice");
		result.setRedirect(true);
		
		return result;
	}
	
}
