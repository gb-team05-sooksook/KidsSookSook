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

public class DeleteUserActionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		resp.setCharacterEncoding("UTF-8");
		Result result = new Result();
		MemberDAO memberDAO = new MemberDAO();
		JSONArray userIds = null;
		
		try {
			userIds = new JSONArray(req.getParameter("checkedIds"));
			
			for (int i = 0; i < userIds.length(); i++) {
				// 순서 바뀌면 안됨. 참조 무결성으로 member테이블에서 삭제 후 user 테이블에서 삭제
				memberDAO.deleteMember(userIds.getLong(i));
				memberDAO.deleteUser(userIds.getLong(i));
			}
		} catch (JSONException e) {
			e.printStackTrace();
		}

		result.setPath(req.getContextPath() + "/memberInfo.admin");
		result.setRedirect(true);
		
		return result;
	}

}
