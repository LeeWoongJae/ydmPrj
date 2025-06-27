package com.yedam.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.yedam.common.Control;
import com.yedam.service.MemberService;
import com.yedam.service.MemberServiceImpl;
import com.yedam.service.MovieService;
import com.yedam.service.MovieServiceImpl;
import com.yedam.vo.MemberDTO;
import com.yedam.vo.MovieVO;

public class MovieListControl implements Control {

    @Override
    public void exec(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
    	String memberId = req.getParameter("memberId");
        // 1. 서비스 호출
        MovieService svc = new MovieServiceImpl();
        List<MovieVO> list = svc.movieList();
        System.out.println(list.size()); 
        
        // 2. request 범위에 세팅
        req.setAttribute("list", list);
        
        
        MemberService msv = new MemberServiceImpl();
        MemberDTO member = msv.login(memberId);
        HttpSession session = req.getSession();
        session.setAttribute("logId", member.getMemberId());
        session.setAttribute("isMembership", member.getIsMembership());
        
        
        // 3. 같은 요청 안에서 Tiles-JSP로 forward
        req.getRequestDispatcher("WEB-INF/jsp/product/productList.jsp")
           .forward(req, resp);
    }
}
