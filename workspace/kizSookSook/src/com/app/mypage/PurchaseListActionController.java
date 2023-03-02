package com.app.mypage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.fieldTrip.domain.FieldTripDTO;
import com.app.member.domain.MemberDTO;
import com.app.mypage.dao.MyPageDAO;

public class PurchaseListActionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		MyPageDAO myPageDAO = new MyPageDAO();
		FieldTripDTO fieldTripDTO = new FieldTripDTO();
		Result result = new Result();
		
		req.setAttribute("fieldTripDTO", myPageDAO.findPurchaseList((Long)req.getSession().getAttribute("userId")));
		
		result.setPath("/templates/mypage/stage-list/trip-history.html");
		
		return result;
	}

}
