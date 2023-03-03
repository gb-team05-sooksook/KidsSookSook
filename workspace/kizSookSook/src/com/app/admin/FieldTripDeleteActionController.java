package com.app.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONException;

import com.app.Action;
import com.app.Result;
import com.app.fieldTrip.dao.FieldTripDAO;
import com.app.member.dao.MemberDAO;

public class FieldTripDeleteActionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		FieldTripDAO fieldTripDAO = new FieldTripDAO();
		JSONArray fieldTripIds = null;
		
		try {
			fieldTripIds = new JSONArray(req.getParameter("fieldTripIds"));
			
			for (int i = 0; i < fieldTripIds.length(); i++) {
				// 순서 바뀌면 안됨. 참조 무결성으로 member테이블에서 삭제 후 user 테이블에서 삭제
				fieldTripDAO.delete(fieldTripIds.getLong(i));
			}
		} catch (JSONException e) {
			e.printStackTrace();
		}

		result.setPath(req.getContextPath() + "/fieldTrip.admin");
		result.setRedirect(true);
		
		return result;
	}

}
