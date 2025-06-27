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


public class LoginControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub

		// 1. 요청 파라미터 수집
		  String memberId = req.getParameter("memberId");
		  String password = req.getParameter("password");

        // 2. 서비스 호출
        MemberService service = new MemberServiceImpl();
        MemberDTO member = service.loginCheck(memberId , password);
        HttpSession session = req.getSession();// 웹 브라우저 쿠키를 저장
		session.setAttribute("logId", member.getMemberId()); // session에 로그인된 id 저장
        // 3. 로그인 성공 여부 판단
        if (member != null && member.getPassword().equals(password)) {
            // 로그인 성공 → 세션에 회원 정보 저장
            req.getSession().setAttribute("loginMember", member);
            resp.sendRedirect("main.do");
        } else {
            // 로그인 실패 → 에러 메시지와 함께 로그인 폼으로 이동
            req.setAttribute("error", "아이디 또는 비밀번호가 일치하지 않습니다.");
            req.getRequestDispatcher("/WEB-INF/jsp/member/loginForm.jsp").forward(req, resp);
        }
		
		
		//req.getRequestDispatcher("product/movieList.tiles").forward(req, resp);
		
	}

}
