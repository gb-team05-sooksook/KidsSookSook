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

public class FieldTripMainActionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		FieldTripDAO fieldTripDAO = new FieldTripDAO();
		Result result = new Result();
		JSONArray jsons = new JSONArray();
		
		fieldTripDAO.selectTop10().stream().map(data -> new JSONObject(data)).forEach(jsons::put);
		
		req.setAttribute("fieldTripTop10", jsons);
		
		result.setPath("/templates/fieldTrip/fieldTripMain.jsp");
		
		return result;
	}

}
