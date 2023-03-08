package com.app.mypage;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.app.Action;
import com.app.Result;
import com.app.member.domain.MemberDTO;
import com.app.mypage.dao.MyPageDAO;

public class ChangeInfoActionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		req.setCharacterEncoding("UTF-8");
		
		MyPageDAO myPageDAO = new MyPageDAO();
		Result result = new Result();
		JSONArray jsons = new JSONArray();
		List<MemberDTO> MemberDTOs = null;
		
		MemberDTOs = myPageDAO.selectMemberInfo(1L);
		MemberDTOs.stream().map(e -> new JSONObject(e)).forEach(jsons::put);
		req.setAttribute("MemberDTOs", jsons);
		
		System.out.println("MemberDTOs Jsons: "+jsons);
		req.setAttribute("pageNumber", 2);
		
		result.setPath("/templates/mypage/mypage.jsp");
		
		return result;
	}

}
