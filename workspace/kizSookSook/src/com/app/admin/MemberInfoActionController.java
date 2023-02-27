package com.app.admin;

import java.io.IOException;
import java.util.HashMap;
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
import com.app.member.domain.MemberVO;

public class MemberInfoActionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		MemberDAO	memberDAO = new MemberDAO();
		PageDTO pageDTO = null;
		Result result = new Result();
		JSONArray jsons = new JSONArray();
		
		Map<String, Object> searchMap = new HashMap<String, Object>();
		
		String temp = req.getParameter("page"); 
		String sort = req.getParameter("sort");
		String userType = req.getParameter("userType");
		Long total = null;
		
		int page = temp == null ? 1 : Integer.parseInt(temp);
		total = memberDAO.getTotal(userType);
//		한 페이지에 출력되는 게시글의 개수
		int rowCount = 10;
//		한 페이지에서 나오는 페이지 버튼의 개수
		int pageCount = 5;

		pageDTO = new PageDTO().createPageDTO(page, total, rowCount, pageCount);
		
		sort = sort == null ? "recent" : sort;
		
		searchMap.put("rowCount", rowCount);
		searchMap.put("startRow", pageDTO.getStartRow());
		searchMap.put("sort", sort);
		
		if(userType == null || userType.equals("member")) {
			memberDAO.selectMemberAll(searchMap).stream().map(board -> new JSONObject(board)).forEach(jsons::put);
		} else if(userType.equals("institution")) {
			memberDAO.selectInstitutionAll(searchMap).stream().map(board -> new JSONObject(board)).forEach(jsons::put);
		}
		
		req.setAttribute("users", jsons.toString());
		req.setAttribute("total", total);
		req.setAttribute("startPage", pageDTO.getStartPage());
		req.setAttribute("endPage", pageDTO.getEndPage());
		req.setAttribute("page", page);
		req.setAttribute("prev", pageDTO.isPrev());
		req.setAttribute("next", pageDTO.isNext());
		req.setAttribute("sort", sort);
		
//		System.out.println(jsons);
		result.setPath("/templates/adminPage/memberInfo.jsp");
		
//		MemberVO vo = new MemberVO();
//		
//		vo.setUserIdentification("test00");
//		vo.setUserPassword("1234");
//		vo.setUserEmail("test03@gmail.com");
//		vo.setUserPhoneNumber("01011112222");
//		vo.setUserAddress("서울 역삼동");
//		vo.setMemberName("테스트00");
//		vo.setMemberNickname("테스트123");
//		vo.setMemberGender("선택안함");
//		
//		memberDAO.insertUser(vo);
//		memberDAO.insertMember(vo);
		
		return result;
	}

}
