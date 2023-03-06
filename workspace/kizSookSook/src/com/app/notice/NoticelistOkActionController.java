package com.app.notice;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.app.Action;
import com.app.Result;
import com.app.notice.dao.NoticeDAO;
import com.app.notice.domain.NoticeVO;

public class NoticelistOkActionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		NoticeDAO noticeDAO = new NoticeDAO();
		Result result = new Result();
		JSONArray noticeJsons = new JSONArray();
//		JSONObject fileJsons = new JSONObject();
		
		Map<String, Object> searchMap = new HashMap<String, Object>();
		Map<String, Object> pageMap = new HashMap<String, Object>();
		List<NoticeVO> noticeList= null;
		
		String temp = req.getParameter("page"); 
		
		int page =  temp == null || temp.equals("null") ? 1 : Integer.parseInt(temp);
		
		Long total = noticeDAO.getTotalPage(searchMap);
		
		// 한 페이지에 출력되는 공지글 개수
		int rowCount = 10;
		
		// 한 페이지에서 출력되는 페이지 버튼의 개수
		int pageCount = 3;
		int startRow = (page - 1) * rowCount;
		
		int endPage = (int)(Math.ceil(page / (double)pageCount) * pageCount);
		int startPage = endPage - (pageCount - 1);
		int realEndPage = (int)Math.ceil(total / (double)rowCount);
		
		//버튼 누르면 다음버튼 이동
		boolean prev = startPage > 1;
		boolean next =  false;
		endPage = endPage > realEndPage ? realEndPage : endPage;
		
		pageMap.put("rowCount", rowCount);
		pageMap.put("startRow", startRow);
		
		
		noticeList = noticeDAO.selectAll(pageMap);
		
		noticeList.stream().map(noticelist -> new JSONObject(noticelist)).forEach(noticeJsons::put);
		
		req.setAttribute("notices", noticeJsons.toString());
		req.setAttribute("total", total);
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		req.setAttribute("page", page);
		req.setAttribute("prev", prev);
		req.setAttribute("next", next);
		
		result.setPath("/templates/customerCenter/institution-notice.jsp");
		
		return result;
		
	}

}
