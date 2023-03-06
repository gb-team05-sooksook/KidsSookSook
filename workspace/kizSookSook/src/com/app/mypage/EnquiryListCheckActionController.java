package com.app.mypage;

import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import com.app.Action;
import com.app.Result;
import com.app.enquiry.domain.CustomerEnquiryVO;
import com.app.mypage.dao.MyPageDAO;

public class EnquiryListCheckActionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		req.setCharacterEncoding("UTF-8");
		
		MyPageDAO myPageDAO = new MyPageDAO();
		CustomerEnquiryVO EnquiryVO = new CustomerEnquiryVO();
		Result result = new Result();
		Map<String, Object> searchMap = new HashMap<String, Object>();
		JSONArray jsons = new JSONArray();
		List<CustomerEnquiryVO> enquiries = null;
		
		searchMap.put("userId", 4L);
		
		enquiries = myPageDAO.enquiryList(searchMap);
		
		enquiries.stream().map(e -> new JSONObject(e)).forEach(jsons::put);
		
		System.out.println("enquiries: " + enquiries);
		
		req.setAttribute("enquiries", jsons);
		
		req.setAttribute("pageNumber", 4);
		
		result.setPath("/templates/mypage/mypage.jsp");
		return result;
	}

}
