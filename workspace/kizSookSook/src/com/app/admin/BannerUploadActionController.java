package com.app.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONException;
import org.json.JSONObject;

import com.app.Action;
import com.app.Result;
import com.app.file.dao.FileDAO;
import com.app.file.domain.FileVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class BannerUploadActionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		req.setCharacterEncoding("UTF-8");
		Result result = new Result();
		FileVO fileVO = new FileVO();
		FileDAO fileDAO = new FileDAO();
		JSONObject fileJson = new JSONObject();
		PrintWriter out = resp.getWriter();
		
		String uploadPath = req.getSession().getServletContext().getRealPath("/upload");
		System.out.println(uploadPath);
		int fileSize = 1024 * 1024 * 5; //5M
		System.out.println("request getContentType : " + req.getContentType());
		MultipartRequest multipartRequest = new MultipartRequest(req, uploadPath, fileSize, "UTF-8", new DefaultFileRenamePolicy());
		
		Enumeration<String> fileNames = multipartRequest.getFileNames();
		
		Enumeration<String> temp = multipartRequest.getParameterNames();
		
		while(temp.hasMoreElements()) {
			System.out.println(temp.nextElement());
		}
		System.out.println(fileNames.hasMoreElements());
		
		while(fileNames.hasMoreElements()) {
			String fileName = fileNames.nextElement();
			String fileOriginalName = multipartRequest.getOriginalFileName(fileName);
			String fileSystemName = multipartRequest.getFilesystemName(fileName);
			
			System.out.println(fileOriginalName);
			System.out.println(fileSystemName);
			
			if(fileOriginalName == null) {continue;}
			
			fileVO.setFileOriginalName(fileOriginalName);
			fileVO.setFileSystemName(fileSystemName);
			
			System.out.println(fileVO);
//			fileDAO.insert(fileVO);
		}
	
		System.out.println("들어옴");
		result.setPath(req.getContextPath() + "/bannerManage.admin");
		result.setRedirect(true);
		
		return result;
	}

}
