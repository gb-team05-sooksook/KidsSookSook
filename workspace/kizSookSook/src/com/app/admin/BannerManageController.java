package com.app.admin;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.file.dao.FileDAO;
import com.app.file.domain.FileVO;

public class BannerManageController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		FileDAO fileDAO = new FileDAO();
		List<FileVO> files = new ArrayList<FileVO>();
		
		files = fileDAO.selectBannerFiles();

		req.setAttribute("files", files);
		
		result.setPath("/templates/adminPage/bannerManage.jsp");
		
		return result;
	}

}
