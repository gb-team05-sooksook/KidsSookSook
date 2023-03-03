package com.app.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.app.Action;
import com.app.PageDTO;
import com.app.Result;
import com.app.fieldTrip.dao.FieldTripDAO;
import com.app.notice.dao.NoticeDAO;

public class FieldTripSearchActionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
resp.setCharacterEncoding("UTF-8");
		
		req.setCharacterEncoding("UTF-8");

		FieldTripDAO fieldTripDAO = new FieldTripDAO();
		PageDTO pageDTO = null;
		JSONArray jsons = new JSONArray();
		Map<String, Object> searchMap = new HashMap<String, Object>();
		
		PrintWriter out = resp.getWriter();
		
		String keyword = req.getParameter("keyword");
		keyword = keyword == "" ? null : keyword;

		String temp = req.getParameter("page"); 
		String sort = req.getParameter("sort");
		
		System.out.println(keyword);
		
		Long total = null;
		
		int page = temp == null ? 1 : Integer.parseInt(temp);
		total = fieldTripDAO.getTotal(null);
//		한 페이지에 출력되는 게시글의 개수
		int rowCount = 10;
//		한 페이지에서 나오는 페이지 버튼의 개수
		int pageCount = 5;

		pageDTO = new PageDTO().createPageDTO(page, total, rowCount, pageCount);
		
		sort = sort == null ? "recent" : sort;
		
		searchMap.put("rowCount", rowCount);
		searchMap.put("startRow", pageDTO.getStartRow());
		searchMap.put("sort", sort);
		searchMap.put("keyword", keyword);
		
		fieldTripDAO.selectCategoryAll(searchMap).stream().map(member -> new JSONObject(member)).forEach(jsons::put);
		
		out.append(jsons.toString());
		out.close();
		
		req.setAttribute("users", jsons.toString());
		req.setAttribute("total", total);
		req.setAttribute("startPage", pageDTO.getStartPage());
		req.setAttribute("endPage", pageDTO.getEndPage());
		req.setAttribute("page", page);
		req.setAttribute("prev", pageDTO.isPrev());
		req.setAttribute("next", pageDTO.isNext());
		req.setAttribute("sort", sort);
		
		return null;
	}

}
