package com.yedam.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.yedam.common.Control;
import com.yedam.service.MemberService;
import com.yedam.service.MemberServiceImpl;
import com.yedam.vo.MemberDTO;

public class MemberInfoControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String memberId = req.getParameter("memberId");
		MemberService member = new MemberServiceImpl();
		MemberDTO mem = member.login(memberId);
		System.out.println(mem);
		HttpSession session = req.getSession();
		session.setAttribute("member", mem);
		req.getRequestDispatcher("member/myPage.tiles").forward(req, resp);
	}

}
