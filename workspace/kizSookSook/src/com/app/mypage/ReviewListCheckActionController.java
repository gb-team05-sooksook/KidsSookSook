package com.app.mypage;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.app.Action;
import com.app.Result;
import com.app.fieldTrip.domain.ReviewVO;
import com.app.mypage.dao.MyPageDAO;

public class ReviewListCheckActionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		req.setCharacterEncoding("UTF-8");
		
		MyPageDAO myPageDAO = new MyPageDAO();
		Result result = new Result();
		Map<String, Object> searchMap = new HashMap<String, Object>();
		JSONArray jsons = new JSONArray();
		List<ReviewVO> reviews = null;
		
		searchMap.put("userId", 1L);
		
		reviews = myPageDAO.selectMyReview(searchMap); 
		
		reviews.stream().map(e -> new JSONObject(e)).forEach(jsons::put);
		
		System.out.println("reviews: " + reviews);
		
		req.setAttribute("reviews", jsons);
		
		req.setAttribute("pageNumber", 3);
		
		result.setPath("/templates/mypage/mypage.jsp");
		
		return result;
	}

}
