package com.app.notice;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import com.app.Action;
import com.app.Result;
import com.app.enquiry.dao.EnquiryDAO;
import com.app.enquiry.domain.CustomerEnquiryVO;
import com.app.file.dao.FileDAO;
import com.app.file.domain.FileVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.oreilly.servlet.multipart.Part;

public class enquiryOkActionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		req.setCharacterEncoding("UTF-8");
		CustomerEnquiryVO customerEnquiryVO = new CustomerEnquiryVO();
		Result result = new Result();
		FileVO fileVO = new FileVO();
		FileDAO fileDAO = new FileDAO(); 
		EnquiryDAO enquiryDAO = new EnquiryDAO();
		
		String uploadPath = req.getSession().getServletContext().getRealPath("/") + "upload/";
	 System.out.println(uploadPath);
//		String  = req.getSession().getServletContext().getRealPath("/") + "upload/";
		// 실제 서블릿이 동작하는 서버 경로
	
		int fileSize = 1024 * 1024 * 5; //5M
		
		MultipartRequest multipartRequest = new MultipartRequest(req, uploadPath, fileSize, "UTF-8", new DefaultFileRenamePolicy());
		/* String enquiryId = req.getParameter("enquiryId"); */
		
		customerEnquiryVO.setUserEmail(multipartRequest.getParameter("userEmail"));
		customerEnquiryVO.setEnquiryTitle(multipartRequest.getParameter("enquiryTitle"));		
		customerEnquiryVO.setEnquiryContent(multipartRequest.getParameter("enquiryContent"));
		
//		String enquiryId = multipartRequest.getParameter("enquiryId");
		// userid 실험대상
		
		req.setAttribute("userId", 3L);
		customerEnquiryVO.setEnquiryId((Long)req.getSession().getAttribute("enquiryId"));
		customerEnquiryVO.setUserId((Long)req.getSession().getAttribute("userId"));
		
		
	Enumeration<String> fileNames = multipartRequest.getFileNames();
		
		while(fileNames.hasMoreElements()) {
//			파일의 전체 속성
			String fileName = fileNames.nextElement();
			String fileOriginalName = multipartRequest.getOriginalFileName(fileName);
			String fileSystemName = multipartRequest.getFilesystemName(fileName);
			
			System.out.println(fileName);
			System.out.println(fileOriginalName);
			System.out.println(fileSystemName);
			if(fileOriginalName == null) {continue;}
			
			fileVO.setFileOriginalName(fileOriginalName);
			fileVO.setFileSystemName(fileSystemName);
			
			fileDAO.insertEnquiryFile(fileVO);
		}
	
		
		System.out.println("들어옴");
		result.setPath(req.getContextPath() + "/customer-main.notice");
		result.setRedirect(true);
		return result;
	}

}
