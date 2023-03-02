package com.app.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.member.dao.MemberDAO;
import com.app.member.domain.MemberDTO;

public class JoinNormalActionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		req.setCharacterEncoding("UTF-8");
		MemberDAO memberDAO = new MemberDAO();
		MemberDTO memberDTO = new MemberDTO();
		Result result = new Result();
		
		memberDTO.setUserIdentification(req.getParameter("userIdentification"));
		memberDTO.setUserPassword(req.getParameter("userPassword"));
		memberDTO.setMemberName(req.getParameter("memberName"));
		memberDTO.setMemberNickname(req.getParameter("memberNickname"));
		memberDTO.setUserEmail(req.getParameter("userEmail"));
		memberDTO.setUserPhoneNumber(req.getParameter("userPhoneNumber"));
		memberDTO.setUserAddress(req.getParameter("userAddress"));
		
		memberDAO.insertJoinMember(memberDTO);
		result.setPath(req.getContextPath() + "/login.member");
		result.setRedirect(true);
		
		return result;
	}

}
