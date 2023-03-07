package com.app.pay;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.member.domain.CashVO;
import com.app.pay.dao.PayDAO;

public class PaymentActionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		PayDAO payDAO = new PayDAO();
		Map<String, Object> payMap = new HashMap<String, Object>();
		Map<String, Object> cashMap = new HashMap<String, Object>();
		Map<String, Object> cashInsertMap = new HashMap<String, Object>();
		HttpSession session = req.getSession();
		CashVO cashVO = new CashVO();
		Result result = new Result();
		
		Long userId = (Long)session.getAttribute("userId");
		Long fieldTripId = Long.valueOf(req.getParameter("fieldTripId"));
		int headCount = Integer.parseInt(req.getParameter("headCount"));
		int amount = Integer.parseInt(req.getParameter("amount"));
		int cash = Integer.parseInt(req.getParameter("cash"));
		String way = null;
		int cashSave = (int)(amount * 0.005);
		
		payMap.put("userId", userId);
		payMap.put("fieldTripId", fieldTripId);
		payMap.put("headCount", headCount);
		payMap.put("amount", amount);
		
		payDAO.insertPayment(payMap);
		
		cashVO = payDAO.getCash(userId);

		cashMap.put("userId", userId);
		
		if(cashVO.getPaymentCash() - cash >= 0) {
//			paymentCash에서 빼기
			way = "payment";
		} else if(cashVO.getReviewCash() - cash >= 0) {
//			reviewCash에서 빼기
			way = "review";
		} else {
//			300원 100원 200원
//			pCM = 100원
//			cash(rCM) = 200원
			way = "else";
			cash -= cashVO.getPaymentCash();
		}
		cashMap.put("cash", cash);
		cashMap.put("way", way);
		
		payDAO.updateCash(cashMap);
		
		cashInsertMap.put("userId", userId);
		cashInsertMap.put("cashSave", cashSave);
		payDAO.updatePaymentCash(cashInsertMap);

		result.setPath(req.getContextPath() + "/main.main");
		result.setRedirect(true);
		
		return result;
	}
}
