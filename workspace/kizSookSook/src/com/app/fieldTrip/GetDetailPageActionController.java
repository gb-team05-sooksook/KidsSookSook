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
import com.app.fieldTrip.domain.FieldTripDetailDTO;

public class GetDetailPageActionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		FieldTripDAO fieldTripDAO = new FieldTripDAO();
		Result result = new Result();
		JSONArray jsons = new JSONArray();
		FieldTripDetailDTO fieldTripDetailDTO = new FieldTripDetailDTO();
		
		Long fieldTripId = Long.valueOf(req.getParameter("fieldTripId"));
		
		fieldTripDetailDTO = fieldTripDAO.fieldTripDetail(fieldTripId);
		
		req.setAttribute("fieldTripDetailDTO", fieldTripDetailDTO);
		
		result.setPath("templates/fieldTrip/detailPage.jsp");
		
		return result;
	}

}
