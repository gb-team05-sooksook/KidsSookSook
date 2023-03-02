package com.app.admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import com.app.Action;
import com.app.Result;
import com.app.member.dao.MemberDAO;

public class SearchSelectedMemberActionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		resp.setCharacterEncoding("UTF-8");
		
		MemberDAO memberDAO = new MemberDAO();
		PrintWriter out = resp.getWriter();
		JSONArray jsons = new JSONArray();
		JSONArray userIds = null;
		
		try {
			userIds = new JSONArray(req.getParameter("checkedIds"));
			
			for (int i = 0; i < userIds.length(); i++) {
				jsons.put(new JSONObject(memberDAO.selectMember(userIds.getLong(i))));
			}
		} catch (JSONException e) {
			e.printStackTrace();
		}
		
//		ArrayList<String> userIds =  new ArrayList<String>(Arrays.asList(req.getParameter("userIds")));
//		userIds.stream().map(e -> memberDAO.selectMember(Long.valueOf(e))).forEach(jsons::put);
		
		out.append(jsons.toString());
		out.close();
		
		return null;
	}

}
