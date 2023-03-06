package com.app.pay;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONException;
import org.json.JSONObject;

import com.app.Action;
import com.app.Result;
import com.app.fieldTrip.dao.FieldTripDAO;
import com.app.fieldTrip.domain.FieldTripDTO;
import com.app.member.domain.CashVO;
import com.app.pay.dao.PayDAO;

public class PayActionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		PayDAO payDAO = new PayDAO();
		CashVO cashVO = new CashVO();
		FieldTripDAO fieldTripDAO = new FieldTripDAO();
		FieldTripDTO fieldTripDTO = new FieldTripDTO();
		HttpSession session = req.getSession();
		Map<String, Long> payMap = new HashMap<String, Long>();
		JSONObject json = null;
		Result result = new Result();
		
		Long fieldTripId = Long.valueOf(req.getParameter("fieldTripId"));
		Long userId = (Long)session.getAttribute("userId");
		
		payMap.put("fieldTripId", fieldTripId);
		payMap.put("userId", userId);
		
		fieldTripDTO = fieldTripDAO.getfieldTripDTO(fieldTripId);
		json = new JSONObject(fieldTripDTO);
		cashVO = payDAO.getCash(userId);
		
		req.setAttribute("fieldTripDTO", fieldTripDTO);
		req.setAttribute("fieldTripJSON", json.toString());
		req.setAttribute("cashVO", cashVO);
		
		result.setPath("/templates/fieldTrip/pay.jsp");
		
		return result;
	}

}
