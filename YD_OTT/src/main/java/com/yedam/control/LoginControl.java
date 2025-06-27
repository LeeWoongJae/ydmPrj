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

        // 1. 요청 파라미터 수집
        String memberId = req.getParameter("memberId");
        String password = req.getParameter("password");

        // 2. 입력값 null 체크
        if (memberId == null || password == null || memberId.isEmpty() || password.isEmpty()) {
            req.setAttribute("error", "아이디 또는 비밀번호를 입력하세요.");
            req.getRequestDispatcher("/WEB-INF/jsp/member/loginForm.jsp").forward(req, resp);
            return;
        }

        // 3. 서비스 호출
        MemberService service = new MemberServiceImpl();
        MemberDTO member = service.loginCheck(memberId, password);

        // 4. 로그인 성공 여부 판단
        if (member != null && member.getPassword().equals(password)) {
            HttpSession session = req.getSession();
            session.setAttribute("logId", member.getMemberId()); // 로그인 ID 저장
            session.setAttribute("loginMember", member);         // 전체 회원정보 저장
            resp.sendRedirect("main.do");
        } else {
            req.setAttribute("error", "아이디 또는 비밀번호가 일치하지 않습니다.");
            req.getRequestDispatcher("/WEB-INF/jsp/member/loginForm.jsp").forward(req, resp);
        }
    }
}
