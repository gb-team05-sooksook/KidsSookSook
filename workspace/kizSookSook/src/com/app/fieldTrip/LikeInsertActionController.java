package com.app.fieldTrip;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.json.JSONObject;

import com.app.Action;
import com.app.Result;
import com.app.fieldTrip.dao.FieldTripDAO;

public class LikeInsertActionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		FieldTripDAO fieldTripDAO = new FieldTripDAO();
		HttpSession session = req.getSession();
		Map<String, Long> likeMap = new HashMap<String, Long>();

		Long fieldTripId = Long.valueOf(req.getParameter("fieldTripId"));
		Long userId = (Long)session.getAttribute("userId");
		
		likeMap.put("fieldTripId", fieldTripId);
		likeMap.put("userId", userId);
		
		fieldTripDAO.insertLike(likeMap);
		
		return null;
	}

}
