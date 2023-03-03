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
import com.app.fieldTrip.domain.FieldTripDTO;
import com.app.fieldTrip.domain.FieldTripDetailDTO;
import com.app.fieldTrip.domain.FieldTripDetailVO;

public class GetDetailPageActionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		FieldTripDAO fieldTripDAO = new FieldTripDAO();
		Result result = new Result();
		FieldTripDTO fieldTripDTO = new FieldTripDTO();
		FieldTripDetailVO fieldTripDetailVO = new FieldTripDetailVO();
		
		Long fieldTripId = Long.valueOf(req.getParameter("fieldTripId"));
		
		fieldTripDetailVO = fieldTripDAO.fieldTripDetail(fieldTripId);
		fieldTripDTO = fieldTripDAO.getfieldTripDTO(fieldTripId);
		
		req.setAttribute("fieldTripDetailVO", fieldTripDetailVO);
		req.setAttribute("fieldTripDTO", fieldTripDTO);
		
		result.setPath("templates/fieldTrip/detailPage.jsp");
		
		return result;
	}

}
