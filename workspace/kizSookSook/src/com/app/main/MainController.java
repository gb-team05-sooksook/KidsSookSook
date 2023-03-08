package com.app.main;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;

import com.app.Action;
import com.app.Result;
import com.app.fieldTrip.domain.FieldTripDTO;
import com.app.main.dao.MainDAO;

public class MainController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		MainDAO mainDAO = new MainDAO();
		Result result = new Result();
		JSONArray jsons = new JSONArray();
		
		List<FieldTripDTO> pamentTop = mainDAO.payRecTop4();
		List<FieldTripDTO> recommendTop = mainDAO.fieldTripRecTop4();
		List<FieldTripDTO> reviewTop = mainDAO.reviewRecTop4();
		
		req.setAttribute("pamentTop", pamentTop);
		req.setAttribute("recommendTop", recommendTop);
		req.setAttribute("reviewTop", reviewTop);
		
		result.setPath("/templates/main/main.jsp");
		
		return result;
	}

}
