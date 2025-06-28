package com.yedam.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.common.Control;

public class PaymentControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String value = req.getParameter("value");
		String orderName = req.getParameter("orderName");
		String customerName = req.getParameter("customerName");
		
		req.setAttribute("value", value);
		req.setAttribute("orderName", orderName);
		req.setAttribute("customerName", customerName);
		
		req.getRequestDispatcher("WEB-INF/jsp/membership/payment.jsp").forward(req, resp);
	}

}
