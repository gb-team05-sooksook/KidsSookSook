package com.app.fieldTrip;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.fieldTrip.dao.FieldTripDAO;

public class ConnectCategoryPageActionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		FieldTripDAO fieldTripDAO = new FieldTripDAO();
		Result result = new Result();
		
		String categoryId = req.getParameter("categoryId");
		
		fieldTripDAO.selectCategoryAll(categoryId);
		
		result.setPath("/html/fieldTrip/fieldPage-activity.jsp");
		
		return result;
	}

}
