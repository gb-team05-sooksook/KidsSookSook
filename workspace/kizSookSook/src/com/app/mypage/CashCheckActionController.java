package com.app.mypage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.member.domain.CashVO;
import com.app.pay.dao.PayDAO;

public class CashCheckActionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		req.setCharacterEncoding("UTF-8");
		
		Result result = new Result();
		PayDAO payDAO = new PayDAO();
		CashVO cashVO = new CashVO();
		
		req.setAttribute("pageNumber", 1);
		
		result.setPath("/templates/mypage/mypage.jsp");
		
		return result;
	}

}
