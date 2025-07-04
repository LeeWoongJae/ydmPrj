package com.yedam.control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.common.Control;
import com.yedam.service.MemberService;
import com.yedam.service.MemberServiceImpl;
import com.yedam.vo.MemberDTO;

public class RegistMemberControl implements Control {

    @Override
    public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");

        if(req.getMethod().equals("GET")) {
            req.getRequestDispatcher("member/signUp.tiles").forward(req, resp);
        } else if(req.getMethod().equals("POST")) {
            String id = req.getParameter("memberId");
            String pw = req.getParameter("password");
            String name = req.getParameter("username");
            String email = req.getParameter("email");
            String phone = req.getParameter("phone");
            String birth = req.getParameter("birth");

            MemberDTO member = new MemberDTO();
            member.setMemberId(id);
            member.setPassword(pw);
            member.setName(name);
            member.setEmail(email);
            member.setPhone(phone);
            member.setBirthDate(birth);

            MemberService msv = new MemberServiceImpl();
            int result = msv.insertMember(member);
            System.out.println("insert 결과: " + result);

            if(result == 1) {
                resp.sendRedirect("login.do");
            } else {
                resp.sendRedirect("signUp.tiles?error=true");
            }
        }
    }
}
