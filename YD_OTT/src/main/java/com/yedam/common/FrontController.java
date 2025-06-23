package com.yedam.common;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FrontController extends HttpServlet{
// url pattern을 key , value 로 관리
	
	Map<String, Control> map;
	public FrontController() {
		map = new HashMap<String, Control>();
		
	}
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		// 메인 페이지
		
		// 로그인페이지
		
		// 회원가입 페이지
		
		// OTT 상세보기
		
		// 찜목록 페이지
		
		// 멤버쉽 페이지
		
		// -- 추가되는 페이지 --
		
	
		
	}
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 각 url 마다 매핑된 페이지를 호출(https://localhost:8080/BoardWep/boardList.do)-> Control 반환
		String uri = req.getRequestURI(); // /BoardWep/boardList.do 반환
		String context = req.getContextPath();
		String page = uri.substring(context.length());// /boardList.do 반환
		//System.out.println(page+context.length()); // => /user/loginForm.do 반환 ?? 이게 맞아?
		Control sub = map.get(page);
		sub.exec(req , resp);
	}
}
