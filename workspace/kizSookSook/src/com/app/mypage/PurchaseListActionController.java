package com.app.mypage;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.json.JSONParser;
import org.json.JSONArray;
import org.json.JSONObject;

import com.app.Action;
import com.app.Result;
import com.app.fieldTrip.domain.FieldTripDTO;
import com.app.mypage.dao.MyPageDAO;

public class PurchaseListActionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		req.setCharacterEncoding("UTF-8");
		
		MyPageDAO myPageDAO = new MyPageDAO();
		FieldTripDTO fieldTripDTO = new FieldTripDTO();
		Result result = new Result();
		JSONArray jsons = new JSONArray();
		List<FieldTripDTO> fieldTripDTOs = null;
		Map<String, Object> searchMap = new HashMap<String, Object>();
		ArrayList<String> types = new ArrayList<String>();
		
//		(Long)req.getSession().getAttribute("userId"))
//		나중에 위에껄로 수정해야함
		
//		categoryName=&date=&date=&fieldTripName=
		
		String categoryName = req.getParameter("categoryName");
		categoryName = categoryName == null || categoryName.equals("") ? null : categoryName;
		String startDate = req.getParameterValues("date") == null ? null : req.getParameterValues("date")[0];
		String endDate = req.getParameterValues("date") == null ? null :req.getParameterValues("date")[1];
		String fieldTripName = req.getParameter("fieldTripName");
		fieldTripName = fieldTripName == null || fieldTripName.equals("") ? null : fieldTripName;
		
		
		System.out.println("categoryName: " + categoryName);
		System.out.println("fieldTripName: " + fieldTripName);
//		System.out.println("date: " + startDate);
//		System.out.println("date: " + endDate);
//		if(startDate == null || endDate == null) {
//			searchMap.put("date", null);
//		} else searchMap.put("date", "date");
		
		
		searchMap.put("categoryName", categoryName);
		searchMap.put("fieldTripName", fieldTripName);
		searchMap.put("startDate", startDate);
		searchMap.put("endDate", endDate);
		searchMap.put("userId", 4L);
		 
		
		/*
		 * System.out.println("search Map categoryName: " +
		 * searchMap.get("categoryName"));
		 * System.out.println("search Map fieldTripName: " + searchMap.get("keyword"));
		 * System.out.println("search Map startDate: " + searchMap.get("startDate"));
		 * System.out.println("search Map endDate: " + searchMap.get("endDate"));
		 * System.out.println("search Map userId: " + searchMap.get("userId"));
		 * System.out.println("searchMap: " + searchMap);
		 */
		
		
		fieldTripDTOs = myPageDAO.findPurchaseList(searchMap); 
		System.out.println("fieldTripDTOs: " + fieldTripDTOs);
		
		fieldTripDTOs.stream().map(e -> new JSONObject(e)).forEach(jsons::put);
		
		System.out.println("jsons: " + jsons);
		
		req.setAttribute("fieldTrips", jsons);
		
		req.setAttribute("pageNumber", 0);
		
		result.setPath("/templates/mypage/mypage.jsp");
		
		return result;
	}

}
