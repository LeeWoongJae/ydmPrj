package com.yedam.control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.*;

import com.yedam.common.Control;
import com.yedam.service.MemberService;
import com.yedam.service.MemberServiceImpl;
import com.yedam.service.MembershipService;
import com.yedam.service.MembershipServiceImpl;
import com.yedam.vo.MemberDTO;
import com.yedam.vo.SubScriptionVO;

public class LoginControl implements Control {

    @Override
    public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        // 1. 파라미터 수집
        String memberId = req.getParameter("memberId");
        String password = req.getParameter("password");

        // 2. 입력값 검증
        if (memberId == null || password == null || memberId.isEmpty() || password.isEmpty()) {
            req.setAttribute("errorMsg", "아이디 또는 비밀번호를 입력하세요.");
            req.getRequestDispatcher("/WEB-INF/jsp/member/loginForm.jsp").forward(req, resp);
            return;
        }

        // 3. 서비스 호출
        MemberService service = new MemberServiceImpl();
        MemberDTO member = service.loginCheck(memberId, password);

        if (member != null && member.getPassword().equals(password)) {
            // 4. 로그인 성공 처리
            HttpSession session = req.getSession();
            session.setAttribute("logId", member.getMemberId()); // ID 저장
            session.setAttribute("loginMember", member); // 전체 회원 정보 저장

            // 5. 구독정보 확인 및 세션 저장
            if ("O".equals(member.getIsMembership())) {
                MembershipService msv = new MembershipServiceImpl();
                SubScriptionVO subInfo = msv.selectMembership(memberId);

                String mbsName = switch (subInfo.getPlanNo()) {
                    case 1 -> "3 DAYS";
                    case 2 -> "7 DAYS";
                    case 3 -> "15 DAYS";
                    case 4 -> "30 DAYS";
                    default -> "X";
                };
                session.setAttribute("mbsName", mbsName);
            }

            // 6. 이동
            resp.sendRedirect("main.do");

        } else {
            // 로그인 실패
            req.setAttribute("errorMsg", "아이디 또는 비밀번호가 일치하지 않습니다.");
            req.getRequestDispatcher("/WEB-INF/jsp/member/loginForm.jsp").forward(req, resp);
        }
    }
}
