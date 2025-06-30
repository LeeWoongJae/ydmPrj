package com.yedam.control;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.yedam.common.Control;
import com.yedam.service.MemberService;
import com.yedam.service.MemberServiceImpl;
import com.yedam.service.MembershipService;
import com.yedam.service.MembershipServiceImpl;

public class RemoveMembershipControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		resp.setContentType("text/json;charset=utf-8");
		String memberId = req.getParameter("memberId");
		Gson gson = new GsonBuilder().setPrettyPrinting().create();
		Map<String , Object> map = new HashMap<>();
		MemberService msv = new MemberServiceImpl(); // member의 맴버쉽 상태를 변경
		MembershipService svc = new MembershipServiceImpl(); // 맴버쉽 취소
		if(svc.removeMembership(memberId)==1) {
			if(msv.ResetMembership(memberId)==1) {
				map.put("retCode", "Success");
				String json = gson.toJson(map);
				System.out.println(json);
				resp.getWriter().print(json);
			}else {
				map.put("retCode", "Fail");
				String json = gson.toJson(map);
				System.out.println(json+"구독내역에선 삭제되었지만\n맴버구독상태는 초기화되지 못했습니다.");
				resp.getWriter().print(json);
			}
		}else {
			map.put("retCode", "Fail");
			String json = gson.toJson(map);
			System.out.println(json);
			resp.getWriter().print(json);
		}

	}
	

}
