package com.yedam.common;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.control.AddRevuControl;
import com.yedam.control.AddWatchProdControl;
import com.yedam.control.AddWishControl;
import com.yedam.control.LoginControl;
import com.yedam.control.LogoutControl;
import com.yedam.control.MainControl;
import com.yedam.control.MemberInfoControl;
import com.yedam.control.MembershipControl;
import com.yedam.control.PlayProdControl;
import com.yedam.control.MovieListControl;
import com.yedam.control.RegistMemberControl;
import com.yedam.control.RegistMembershipControl;
import com.yedam.control.RemoveMemberControl;
import com.yedam.control.RemoveMembershipControl;
import com.yedam.control.RemoveRevuControl;
import com.yedam.control.RemoveWishControl;
import com.yedam.control.SelectDetailControl;
import com.yedam.control.SelectProdControl;
import com.yedam.control.SelectRevuListControl;
import com.yedam.control.WatchListControl;
import com.yedam.control.WishListControl;

public class FrontController extends HttpServlet{
// url pattern을 key , value 로 관리
	
	Map<String, Control> map;
	public FrontController() {
		map = new HashMap<String, Control>();
		
	}
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		// 메인 페이지
		map.put("/main.do",new MainControl() );
		
		// member page
		map.put("/memberInfo.do", new MemberInfoControl()); // 회원정보 - 마이페이지
		map.put("/registMember.do", new RegistMemberControl()); // 회원 가입
		map.put("/removeMember.do", new RemoveMemberControl()); // 회원 탈퇴
		map.put("/login.do", new LoginControl()); // 로그인
		map.put("/logout.do", new LogoutControl()); // 로그아웃)
		
		
		
		
		
		
		// OTT page
		map.put("/movieList.do", new MovieListControl()); // OTT 리스트
		map.put("/selectProd.do", new SelectProdControl()); // OTT 단일 검색
		map.put("/selectDetail.do", new SelectDetailControl()); // OTT 상세보기
		
		
		
		
		
		
		
		
		// wishList page
		map.put("/wishList.do", new WishListControl()); // 찜목록 나열
		map.put("/addWish.do", new AddWishControl()); // 찜목록 추가
		map.put("/removeWish.do", new RemoveWishControl()); // 찜목록 삭제
		
		
		
		
		
		
		//membership page
		map.put("/membership.do", new MembershipControl()); // 맴버쉽 리스트()
		map.put("/registmembership.do", new RegistMembershipControl()); // 맴버쉽 가입(가입한 플랜정보를 가지고 감)
		map.put("/removemembership.do", new RemoveMembershipControl()); // 맴버쉽 탈퇴
		
		
		
		
		
		
		
		
		// watch ott list page
		map.put("/watchList.do", new WatchListControl()); // 시청기록 리스트
		map.put("/addWatchProd.do", new AddWatchProdControl()); // 시청기록 추가
		map.put("/playProd.do", new PlayProdControl()); // 재생
		
		
		
		
		
		
		
		
		
		
		// revu page
		map.put("/selectRevuList.do", new SelectRevuListControl());
		map.put("/addRevu.do", new AddRevuControl());
		map.put("/removeRevu.do", new RemoveRevuControl());
		
		
		
		
		
		
		
		
		
		
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
