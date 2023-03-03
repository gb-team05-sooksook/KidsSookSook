package com.app.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.member.dao.MemberDAO;
import com.app.member.domain.MemberVO;

public class JoinInstitutionActionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		req.setCharacterEncoding("UTF-8");
		MemberDAO memberDAO = new MemberDAO();
		MemberVO memberVO = new MemberVO();
		Result result = new Result();
		
		memberVO.setUserIdentification(req.getParameter("userIdentification"));
		memberVO.setUserPassword(req.getParameter("userPassword"));
		memberVO.setUserEmail(req.getParameter("userEmail"));
		memberVO.setUserPhoneNumber(req.getParameter("userPhoneNumber"));
		memberVO.setUserAddress(req.getParameter("userAddress"));
		memberVO.setInstitutionName(req.getParameter("institutionName"));
		memberVO.setInstitutionBusinessNumber(req.getParameter("institutionBusinessNumber"));
		
		memberDAO.insertUser(memberVO);
		memberDAO.insertInstitution(memberVO);
		
		result.setPath(req.getContextPath() + "/login.member");
		result.setRedirect(true);
		
		return result;
	}

}
