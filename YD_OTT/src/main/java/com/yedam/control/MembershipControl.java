package com.yedam.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.yedam.common.Control;
import com.yedam.service.MemberService;
import com.yedam.service.MemberServiceImpl;
import com.yedam.vo.MemberVO;

public class MembershipControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
//		HttpSession session = req.getSession();// 웹 브라우저 쿠키를 저장
//		String memberId = session.getId();
//		System.out.println("memberId:"+memberId);
//		req.setAttribute("logId" ,memberId);
		req.getRequestDispatcher("membership/membership.tiles").forward(req, resp);
		
	}

}
