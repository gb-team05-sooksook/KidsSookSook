package com.app.admin;

import java.io.IOException;
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
import com.app.fieldTrip.dao.FieldTripDAO;

public class FieldTripAction implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		FieldTripDAO fieldTripDAO = new FieldTripDAO();
		PageDTO pageDTO = null;
		JSONArray jsons = new JSONArray();
		Map<String, Object> searchMap = new HashMap<String, Object>();
		
		String temp = req.getParameter("page"); 
		Long categoryId = req.getParameter("categoryId") == null ? 
				null : Long.valueOf(req.getParameter("categoryId"));
		
		int page = temp == null ? 1 : Integer.parseInt(temp);
		Long total = fieldTripDAO.getTotal(categoryId);
		
//		한 페이지에 출력되는 게시글의 개수
		int rowCount = 10;
//		한 페이지에서 나오는 페이지 버튼의 개수
		int pageCount = 5;

		pageDTO = new PageDTO().createPageDTO(page, total, rowCount, pageCount);
		
//		sort = sort == null ? "recent" : sort;
		
		searchMap.put("rowCount", rowCount);
		searchMap.put("startRow", pageDTO.getStartRow());
		
//		dao 부분 작성 필요
		fieldTripDAO.selectCategoryAll(searchMap).stream().map(e -> new JSONObject(e)).forEach(jsons::put);
		
		req.setAttribute("fieldTrips", jsons);
		req.setAttribute("total", total);
		req.setAttribute("startPage", pageDTO.getStartPage());
		req.setAttribute("endPage", pageDTO.getEndPage());
		req.setAttribute("page", page);
		req.setAttribute("prev", pageDTO.isPrev());
		req.setAttribute("next", pageDTO.isNext());
//		req.setAttribute("sort", sort);
		
		result.setPath("/templates/adminPage/fieldTripFind.jsp");
		return result;
	}

}
