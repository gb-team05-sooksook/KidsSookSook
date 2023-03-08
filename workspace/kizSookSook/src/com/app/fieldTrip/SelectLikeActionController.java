package com.app.fieldTrip;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.fieldTrip.dao.FieldTripDAO;

public class SelectLikeActionController implements Action {
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		FieldTripDAO fieldTripDAO = new FieldTripDAO();
		HttpSession session = req.getSession();
		Map<String, Long> likeMap = new HashMap<String, Long>();
		PrintWriter out = resp.getWriter();
		
		boolean result = false;
		Long userId = (Long)session.getAttribute("userId");
		Long fieldTripId = Long.valueOf(req.getParameter("fieldTripId"));
		
		likeMap.put("userId", userId);
		likeMap.put("fieldTripId", fieldTripId);
		
		result = fieldTripDAO.selectLike(likeMap);
		
		out.print(result);
		out.close();
		return null;
	}
}
