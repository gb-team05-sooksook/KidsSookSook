package com.app.admin;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.app.Action;
import com.app.PageDTO;
import com.app.Result;
import com.app.enquiry.dao.EnquiryDAO;

public class EnquiryActionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		req.setCharacterEncoding("UTF-8");
		
		Result result = new Result();
		EnquiryDAO enquiryDAO = new EnquiryDAO();
		PageDTO pageDTO = null;
		JSONArray jsons = new JSONArray();
		Map<String, Object> searchMap = new HashMap<String, Object>();
		ArrayList<String> types = null;
		
		String enquiryTitle = req.getParameter("enquiryTitle");
		String userId = req.getParameter("userId");
		String confirm = req.getParameter("confirm");
		String temp = req.getParameter("page"); 
		String sort = req.getParameter("sort");
		
		if(req.getParameterValues("type") != null) {
			types = new ArrayList<String>(Arrays.asList(req.getParameterValues("type")));
			searchMap.put("types", types);
		}
		
		if(enquiryTitle != null) {
			searchMap.put("enquiryTitle", enquiryTitle);
		}
		
		if(userId != null) {
			searchMap.put("userId", userId);
		}
		
		if(confirm != null) {
			searchMap.put("confirm", confirm);
		}
		
		int page = temp == null ? 1 : Integer.parseInt(temp);
		Long total = enquiryDAO.getTotal();
		
//		한 페이지에 출력되는 게시글의 개수
		int rowCount = 10;
//		한 페이지에서 나오는 페이지 버튼의 개수
		int pageCount = 5;

		pageDTO = new PageDTO().createPageDTO(page, total, rowCount, pageCount);
		
		sort = sort == null ? "recent" : sort;
		
		searchMap.put("rowCount", rowCount);
		searchMap.put("startRow", pageDTO.getStartRow());
		searchMap.put("sort", sort);
		
//		dao 부분 작성 필요
		enquiryDAO.selectAll(searchMap).stream().map(e -> new JSONObject(e)).forEach(jsons::put);
		
		System.out.println(jsons);
		
		req.setAttribute("enquiries", jsons);
		req.setAttribute("total", total);
		req.setAttribute("startPage", pageDTO.getStartPage());
		req.setAttribute("endPage", pageDTO.getEndPage());
		req.setAttribute("page", page);
		req.setAttribute("prev", pageDTO.isPrev());
		req.setAttribute("next", pageDTO.isNext());
		req.setAttribute("sort", sort);
		
		result.setPath("/templates/adminPage/enquiry.jsp");
		
		return result;
	}

}
