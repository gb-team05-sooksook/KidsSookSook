package com.app.fieldTrip;

import java.io.IOException;

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
		
		String categoryId = req.getParameter("categoryId");
		String categoryName = req.getParameter("categoryName");
		
		fieldTripDAO.selectCategoryAll(categoryId).stream().map(data -> new JSONObject(data)).forEach(jsons::put);
		
		req.setAttribute("categoryAll", jsons.toString());
		
		result.setPath("/templates/fieldTrip/fieldPage-" + categoryName + ".jsp");
		
		return result;
	}

}
