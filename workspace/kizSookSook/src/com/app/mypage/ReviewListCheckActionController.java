package com.app.mypage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;

public class ReviewListCheckActionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		req.setCharacterEncoding("UTF-8");
		
		Result result = new Result();
		req.setAttribute("pageNumber", 3);
		
		result.setPath("/templates/mypage/mypage.jsp");
		
		return result;
	}

}
