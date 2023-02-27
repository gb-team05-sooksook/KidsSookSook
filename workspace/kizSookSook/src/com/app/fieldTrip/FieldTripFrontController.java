package com.app.fieldTrip;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Result;

public class FieldTripFrontController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		String contextPath = req.getContextPath();
		String target = uri.replace(contextPath, "").split("\\.")[0];
		Result result = null;
		System.out.println(target);

		if(target.equals("/likeAction")) {
			result = new LikeActionController().execute(req, resp);
		}else if(target.equals("/rankingListAction")) {
			result = new RankingListActionController().execute(req, resp);
		}else if(target.equals("/bestListAction")) {
			result = new BestListActionController().execute(req, resp);
		}else if(target.equals("/static/fieldTrip/connectCategoryPageAction")) {
			result = new ConnectCategoryPageActionController().execute(req, resp);
		}else if(target.equals("/getReviewAction")) {
			result = new GetReviewActionController().execute(req, resp);
		}else if(target.equals("/getDetailPageAction")) {
			result = new GetDetailPageActionController().execute(req, resp);
		}else if(target.equals("/sortAction")) {
			result = new SortActionController().execute(req, resp);
		}
		
		if(result != null) {
			if(result.isRedirect()) {
				resp.sendRedirect(result.getPath());
			}else {
				req.getRequestDispatcher(result.getPath()).forward(req, resp);
			}
		}
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		doGet(req, resp);
	}
}
