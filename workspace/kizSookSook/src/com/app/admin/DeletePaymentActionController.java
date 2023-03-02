package com.app.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONException;

import com.app.Action;
import com.app.Result;
import com.app.member.dao.MemberDAO;
import com.app.pay.dao.PayDAO;

public class DeletePaymentActionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		PayDAO payDAO = new PayDAO();
		JSONArray userIds = null;
		
		try {
			userIds = new JSONArray(req.getParameter("checkedIds"));
			
			for (int i = 0; i < userIds.length(); i++) {
				payDAO.delete(userIds.getLong(i));
			}
		} catch (JSONException e) {
			e.printStackTrace();
		}
		
		System.out.println(userIds);

		result.setPath(req.getContextPath() + "/payment.admin");
		result.setRedirect(true);
		
		return result;
	}

}
