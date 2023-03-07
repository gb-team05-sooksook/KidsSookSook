package com.app.fieldTrip;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import com.app.Action;
import com.app.Result;
import com.app.fieldTrip.dao.FieldTripDAO;
import com.app.fieldTrip.domain.FieldTripReviewMoreDTO;

public class GetReviewActionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		resp.setCharacterEncoding("UTF-8");
		FieldTripDAO fieldTripDAO = new FieldTripDAO();
		PrintWriter out = resp.getWriter();
		Map<String, Object> pageMap = new HashMap<String, Object>();
		JSONArray jsons = new JSONArray();
		JSONObject jsonObject = new JSONObject();
		FieldTripReviewMoreDTO fieldTripReviewMoreDTO = new FieldTripReviewMoreDTO();
		
		Long fieldTripId = Long.valueOf(req.getParameter("fieldTripId"));
		
//		한 페이지에 출력되는 게시글의 개수
		int rowCount = 5;
		String temp = req.getParameter("page");
		int page = temp == null ? 1 : Integer.parseInt(temp);
		int startRow = (page - 1) * rowCount;
		int nextStartRow = page * rowCount;
		
		pageMap.put("fieldTripId", fieldTripId);
		pageMap.put("startRow", startRow);
		pageMap.put("nextStartRow", nextStartRow);
		pageMap.put("rowCount", rowCount);
		
		fieldTripReviewMoreDTO.setFieldTripReviewDTOs(fieldTripDAO.fieldTripReview(pageMap));
		fieldTripReviewMoreDTO.setNextPage(fieldTripDAO.isNextPage(pageMap));
		
		fieldTripReviewMoreDTO.getFieldTripReviewDTOs().stream().map(data -> new JSONObject(data)).forEach(jsons::put);
		
		try {
			jsonObject.put("isNextPage", fieldTripReviewMoreDTO.isNextPage());
			jsonObject.put("reviews", jsons);
		} catch (JSONException e) {
			e.printStackTrace();
		}
		
		out.print(jsonObject.toString());
		out.close();
		return null;
	}

}
