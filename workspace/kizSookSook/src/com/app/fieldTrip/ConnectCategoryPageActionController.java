package com.app.fieldTrip;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.app.Action;
import com.app.Result;
import com.app.fieldTrip.dao.FieldTripDAO;

public class ConnectCategoryPageActionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		FieldTripDAO fieldTripDAO = new FieldTripDAO();
		Result result = new Result();
		JSONArray jsons = new JSONArray();
		
		Map<String, Object> pageMap = new HashMap<String, Object>();
		
		String categoryId = req.getParameter("categoryId");
		String categoryName = req.getParameter("categoryName");
		String temp = req.getParameter("page");
		
		int page = temp == null ? 1 : Integer.parseInt(temp);
		
		Long total = fieldTripDAO.getTotal(Long.valueOf(categoryId));
//		한 페이지에 출력되는 게시글의 개수
		int rowCount = 4;
//		한 페이지에서 나오는 페이지 버튼의 개수
		int pageCount = 1;
		int startRow = (page - 1) * rowCount;
		
		int endPage = (int)(Math.ceil(page / (double)pageCount) * pageCount);
		int startPage = endPage - (pageCount - 1);
		int realEndPage = (int)Math.ceil(total / (double)rowCount);
		
		boolean prev = startPage > 1;
		boolean next = false;
		endPage = endPage > realEndPage ? realEndPage : endPage;
		next = endPage != realEndPage;
		
		pageMap.put("categoryId", categoryId);
		pageMap.put("rowCount", rowCount);
		pageMap.put("startRow", startRow);
		
		fieldTripDAO.selectCategoryAll(pageMap).stream().map(data -> new JSONObject(data)).forEach(jsons::put);
		
		System.out.println(total);
		System.out.println(prev);
		System.out.println(next);
		System.out.println(realEndPage);

		req.setAttribute("categoryAll", jsons.toString());
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		req.setAttribute("page", page);
		req.setAttribute("prev", prev);
		req.setAttribute("next", next);
		
		result.setPath("/templates/fieldTrip/fieldPage-" + categoryName + ".jsp");
		
		return result;
	}

}
