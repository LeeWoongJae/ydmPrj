package com.yedam.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.common.Control;
import com.yedam.service.MovieService;
import com.yedam.service.MovieServiceImpl;
import com.yedam.vo.MovieVO;

public class MainControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 1. 서비스 호출
		MovieService svc = new MovieServiceImpl();
		List<MovieVO> list = svc.movieList();
		System.out.println(list.size());
		
//		//로그인시 맴버쉽 가입이 이미 되어있으면 맴버쉽 메뉴에 몇일 짜리인지 표시
//		MembershipService msv = new MembershipServiceImpl();
//		HttpSession session = req.getSession();// 웹 브라우저 쿠키를 저장
//		String memberId = session.getId();
//		SubScriptionVO member = msv.selectMembership(memberId);
//		int planNo = member.getPlanNo();
//		String mbsName="";
//		if(planNo > 0) {
//			if(planNo==1) {
//				mbsName = "3 DAYS";
//			}
//			else if(planNo==2) {
//				mbsName = "7 DAYS";
//			}else if(planNo==3) {
//				mbsName = "15 DAYS";
//			}else {
//				mbsName = "30 DAYS";
//			}
//			
//		}
//		req.setAttribute("mbsName",mbsName);
		
		
		// 2. request 범위에 세팅
		req.setAttribute("list", list);
		req.getRequestDispatcher("product/productList.tiles").forward(req, resp);
	}

}
