package com.app.mypage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.member.domain.MemberDTO;
import com.app.mypage.dao.MyPageDAO;

public class PurchaseListActionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		MyPageDAO myPageDAO = new MyPageDAO();
		MemberDTO memberDTO = new MemberDTO();
		Result result = new Result();
		
		req.setAttribute("memberGender", memberDTO.getMemberGender());
		req.setAttribute("memberName", memberDTO.getMemberName());
		req.setAttribute("memberNickname", memberDTO.getMemberNickname());
		req.setAttribute("userAddress", memberDTO.getUserAddress());
		req.setAttribute("userEmail", memberDTO.getUserEmail());
		req.setAttribute("userId", memberDTO.getUserId());
		req.setAttribute("userIdentification", memberDTO.getUserIdentification());
		req.setAttribute("userPhoneNumber", memberDTO.getUserPhoneNumber());
		req.setAttribute("userRegisterDate", memberDTO.getUserRegisterDate());
		
		/* myPageDAO.myInfoAllSelect(null); */
		
		result.setPath("/templates/mypage/mypage.jsp");
		
		return result;
	}

}
