package com.app.admin;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import com.app.Action;
import com.app.Result;
import com.app.member.dao.MemberDAO;
import com.app.member.domain.MemberVO;

public class UpadateMembersActionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		MemberDAO memberDAO = new MemberDAO();
		Result result = new Result();
		try {
			JSONArray userDatas = new JSONArray(req.getParameter("userDatas"));
			
			for (int i = 0; i < userDatas.length(); i++) {
//				jsonObject로 변환할때에는 "" 붙여주기
				JSONObject json = new JSONObject("" + userDatas.get(i));
				MemberVO memberVO = new MemberVO();
				
				
				memberVO.setUserId(json.getLong("userId"));
				memberVO.setUserEmail(json.getString("userEmail"));
				memberVO.setUserAddress(json.getString("userAddress"));
				memberVO.setUserPhoneNumber(json.getString("userPhoneNumber"));
				memberVO.setMemberNickname(json.getString("memberNickname"));
				memberVO.setMemberGender(json.getString("memberGender"));
				
				memberDAO.updateUser(memberVO);
				memberDAO.updateMember(memberVO);
			}
		} catch (JSONException e) {
			e.printStackTrace();
		}
		
		result.setPath(req.getContextPath() + "/memberInfo.admin");
		result.setRedirect(true);
		
		return result;
	}

}
