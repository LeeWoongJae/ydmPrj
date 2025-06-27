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
import com.yedam.service.MembershipService;
import com.yedam.service.MembershipServiceImpl;
import com.yedam.vo.SubScriptionVO;

public class RegistMembershipControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		if(req.getMethod().equals("GET")) {
			req.getRequestDispatcher("membership/membership.tiles").forward(req, resp);
		}
		else if (req.getMethod().equals("POST")) {
			String memberId = req.getParameter("memberId");
			String mbsCode = req.getParameter("mbscode");
			String cnt; 
			if(mbsCode.equals("1")) {
				// 3일 이용권
				cnt = "3";
			}
			else if(mbsCode.equals("2")) {
				// 7일 이용권
				cnt = "7";
			}else if(mbsCode.equals("3")) {
				// 15일 이용권
				cnt = "15";
			}else {
				// 30일 이용권
				cnt = "30";
			}
			SubScriptionVO ssp = new SubScriptionVO();
			ssp.setMemberId(memberId);
			ssp.setPlanNo(Integer.parseInt(mbsCode));
			ssp.setLeftDate(cnt);
			Gson gson = new GsonBuilder().setPrettyPrinting().create();
			Map<String , Object> map = new HashMap<>();
			MembershipService svc = new MembershipServiceImpl();
			if(svc.registMembership(memberId, Integer.parseInt(mbsCode), cnt)==1) {
				map.put("retVal", ssp);
				map.put("retCode", "Success");
			}else {
				map.put("retCode", "Fail");
			}
			String json = gson.toJson(map);
			System.out.println("json : "+json);
			resp.getWriter().print(json);
			req.getRequestDispatcher("member/movieList.tiles").forward(req, resp);
			
		}
		

	}

}
