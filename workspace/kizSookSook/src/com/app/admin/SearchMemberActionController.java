package com.app.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.app.Action;
import com.app.PageDTO;
import com.app.Result;
import com.app.member.dao.MemberDAO;

public class SearchMemberActionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		resp.setCharacterEncoding("UTF-8");
		
		MemberDAO memberDAO = new MemberDAO();
		PageDTO pageDTO = null;
		Result result = new Result();
		JSONArray jsons = new JSONArray();
		Map<String, Object> searchMap = new HashMap<String, Object>();
		
		PrintWriter out = resp.getWriter();
		
		String type = req.getParameter("type");
		String keyword = req.getParameter("keyword");
		keyword = keyword == "" ? null : keyword;

		List<String> types = new ArrayList<String>(Arrays.asList(type.split("&")));
		
		String temp = req.getParameter("page"); 
		String sort = req.getParameter("sort");
		
//		검색조건 중 유저타입 : member or intitution
		
		Long total = null;
		
		int page = temp == null ? 1 : Integer.parseInt(temp);
		total = memberDAO.getTotal(searchMap);
//		한 페이지에 출력되는 게시글의 개수
		int rowCount = 10;
//		한 페이지에서 나오는 페이지 버튼의 개수
		int pageCount = 5;

		pageDTO = new PageDTO().createPageDTO(page, total, rowCount, pageCount);
		
		sort = sort == null ? "recent" : sort;
		
		searchMap.put("rowCount", rowCount);
		searchMap.put("startRow", pageDTO.getStartRow());
		searchMap.put("sort", sort);
		searchMap.put("types", types);
		searchMap.put("keyword", keyword);
		
		memberDAO.selectMemberAll(searchMap).stream().map(member -> new JSONObject(member)).forEach(jsons::put);;
		
		out.append(jsons.toString());
		out.close();
		
		req.setAttribute("users", jsons.toString());
		req.setAttribute("total", total);
		req.setAttribute("startPage", pageDTO.getStartPage());
		req.setAttribute("endPage", pageDTO.getEndPage());
		req.setAttribute("page", page);
		req.setAttribute("prev", pageDTO.isPrev());
		req.setAttribute("next", pageDTO.isNext());
		req.setAttribute("sort", sort);
		
		return null;
	}

}
