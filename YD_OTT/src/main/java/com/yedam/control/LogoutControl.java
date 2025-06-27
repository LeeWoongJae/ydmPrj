package com.yedam.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.yedam.common.Control;

public class LogoutControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		// 다시 세션 정보를 들고옴
		HttpSession session = req.getSession();
		// 세션을 죽임
		session.invalidate();
		// 다시 로그인 화면 호출
		resp.sendRedirect("main.do");
	}

}
