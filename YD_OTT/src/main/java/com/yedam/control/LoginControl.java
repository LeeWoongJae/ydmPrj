package com.yedam.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
    	// TODO Auto-generated method stub

		// 1. 요청 파라미터 수집
		  String memberId = req.getParameter("memberId");
		  String password = req.getParameter("password");
		  int planNo = 0;
		  String str = "";
		// 2. 입력값 null 체크
		if (memberId == null || password == null || memberId.isEmpty() || password.isEmpty()) {
			req.setAttribute("error", "아이디 또는 비밀번호를 입력하세요.");
			req.getRequestDispatcher("/WEB-INF/jsp/member/loginForm.jsp").forward(req, resp);
			return;
	    }
        // 3. 서비스 호출
        MemberService service = new MemberServiceImpl();
        MembershipService msv = new MembershipServiceImpl();
        MemberDTO member = service.loginCheck(memberId , password);
        SubScriptionVO subInfo = msv.selectMembership(memberId);
        HttpSession session = req.getSession();// 웹 브라우저 쿠키를 저장
		session.setAttribute("logId", member.getMemberId()); // session에 로그인된 id 저장
		if(member.getIsMembership().equals("O")) {
			planNo = subInfo.getPlanNo();
			switch(planNo) {
			case 1 : {
				str = "3 DYAS"; // session에 로그인된 id 저장
				break;
			}
			case 2 : {
				str = "7 DYAS"; // session에 로그인된 id 저장
				break;
			}
			case 3 : {
				str = "15 DYAS"; // session에 로그인된 id 저장
				break;
			}
			case 4 : {
				str = "30 DYAS"; // session에 로그인된 id 저장
				break;
			}
			default :{
				str = "X";
				break;
			}
			}
			session.setAttribute("mbsName", str); // session에 로그인된 id 저장
			
		}
		
		// 4. 로그인 성공 여부 판단
        if (member != null && member.getPassword().equals(password)) {
            // 로그인 성공 → 세션에 회원 정보 저장
            session.setAttribute("logId", member.getMemberId()); // 로그인 ID 저장
            session.setAttribute("loginMember", member);         // 전체 회원정보 저장
            resp.sendRedirect("main.do");
        	//req.getRequestDispatcher("main.do").forward(req, resp);
        } else {
            req.setAttribute("error", "아이디 또는 비밀번호가 일치하지 않습니다.");
            req.getRequestDispatcher("/WEB-INF/jsp/member/loginForm.jsp").forward(req, resp);
        }
    }
}
