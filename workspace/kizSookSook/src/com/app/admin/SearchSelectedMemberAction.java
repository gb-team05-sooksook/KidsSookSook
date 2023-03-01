package com.app.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;

import com.app.Action;
import com.app.Result;
import com.app.member.dao.MemberDAO;

public class SearchSelectedMemberAction implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		resp.setCharacterEncoding("UTF-8");
		
		MemberDAO memberDAO = new MemberDAO();
		PrintWriter out = resp.getWriter();
		JSONArray jsons = new JSONArray();
		
//		ArrayList<String> userIds =  new ArrayList<String>(Arrays.asList(req.getParameter("userIds")));
		System.out.println(req.getParameter("userIds"));
//		userIds.stream().map(e -> memberDAO.selectMember(Long.valueOf(e))).forEach(jsons::put);
		
//		System.out.println(jsons.toString());
		
		out.append(jsons.toString());
		out.close();
		
		return null;
	}

}
