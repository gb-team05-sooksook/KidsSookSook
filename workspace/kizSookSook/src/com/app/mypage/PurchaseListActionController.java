package com.app.mypage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.app.Action;
import com.app.Result;
import com.app.fieldTrip.domain.FieldTripDTO;
import com.app.member.domain.MemberDTO;
import com.app.mypage.dao.MyPageDAO;
import com.mysql.cj.xdevapi.JsonArray;

public class PurchaseListActionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		MyPageDAO myPageDAO = new MyPageDAO();
		FieldTripDTO fieldTripDTO = new FieldTripDTO();
		Result result = new Result();
		JSONArray jsons = new JSONArray();
		
//		(Long)req.getSession().getAttribute("userId"))
//		나중에 위에껄로 수정해야함
		myPageDAO.findPurchaseList(4L).stream().map(e -> new JSONObject(e)).forEach(jsons::put);
		System.out.println(jsons);
		req.setAttribute("fieldTrips", jsons);
		req.setAttribute("pageNumber", 0);
		
		result.setPath("/templates/mypage/mypage.jsp");
		
		return result;
	}

}
