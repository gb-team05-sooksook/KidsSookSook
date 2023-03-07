package com.app.admin;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		
		String bannerId = req.getParameter("bannerId");
		String uploadPath = req.getSession().getServletContext().getRealPath("/") + "upload/";
		int fileSize = 1024 * 1024 * 5; //5M
		MultipartRequest multipartRequest = new MultipartRequest(req, uploadPath, fileSize, "UTF-8", new DefaultFileRenamePolicy());
		
		Enumeration<String> fileNames = multipartRequest.getFileNames();
		
		fileDAO.selectBannerFiles().stream().filter(file -> file.getTargetId() == Long.valueOf(bannerId)).forEach(e -> {
			File oldFile = new File(uploadPath + e.getFileSystemName());
			
			if(oldFile.exists()) {
				oldFile.delete();
			}
		});
		
		if(fileNames.hasMoreElements()) {
			String fileName = fileNames.nextElement();
			String fileOriginalName = multipartRequest.getOriginalFileName(fileName);
			String fileSystemName = multipartRequest.getFilesystemName(fileName);
			
			fileVO.setTargetId(Long.valueOf(bannerId));
			fileVO.setFileOriginalName(fileOriginalName);
			fileVO.setFileSystemName(fileSystemName);
			
			fileDAO.updateBannerFile(fileVO);
		}
	
		result.setPath(req.getContextPath() + "/bannerManage.admin");
		result.setRedirect(true);
		
		return result;
	}

}
