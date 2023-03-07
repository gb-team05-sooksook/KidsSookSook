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
import com.app.enquiry.domain.CustomerEnquiryVO;
import com.app.member.domain.CashVO;
import com.app.mypage.dao.MyPageDAO;
import com.app.pay.dao.PayDAO;

public class CashCheckActionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		req.setCharacterEncoding("UTF-8");
		
		Result result = new Result();
		MyPageDAO myPageDAO = new MyPageDAO();
		CashVO cashVO = new CashVO();
		JSONArray jsons = new JSONArray();
		Map<String, Object> searchMap = new HashMap<String, Object>();
		List<CashVO> cashes = null;
		
		searchMap.put("userId", 1L);
		
		cashes = myPageDAO.selectMyCash(searchMap);
		
		cashes.stream().map(e -> new JSONObject(e)).forEach(jsons::put);
		
		req.setAttribute("cashes", jsons);
		
		System.out.println("Jsoncashes: " + jsons);
		
		req.setAttribute("pageNumber", 1);
		
		result.setPath("/templates/mypage/mypage.jsp");
		
		return result;
	}

}
