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
import com.yedam.vo.SubScriptionVO;

public class RegistMembershipControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/json;charset=utf-8");
			// 파라메터 가져오기
						String memberId = req.getParameter("memberId");
						String planNo = req.getParameter("planNo");
						String leftDate=""; // 각 멤버쉽 코드별 이용가능 일수 
						if(planNo.equals("1")) {
							// 3일 이용권
							leftDate = "3";
						}
						else if(planNo.equals("2")) {
							// 7일 이용권
							leftDate = "7";
						}else if(planNo.equals("3")) {
							// 15일 이용권
							leftDate = "15";
						}else {
							// 30일 이용권
							leftDate = "30";
						}
						System.out.println("memberId:"+memberId+"planNo:"+planNo+"leftDate:"+leftDate);
						SubScriptionVO ssp = new SubScriptionVO();
						ssp.setMemberId(memberId);
						ssp.setPlanNo(Integer.parseInt(planNo));
						ssp.setLeftDate(leftDate);
						Gson gson = new GsonBuilder().setPrettyPrinting().create();
						Map<String , Object> map = new HashMap<>();
						MemberService msv = new MemberServiceImpl(); // member의 맴버쉽 상태를 변경
						MembershipService svc = new MembershipServiceImpl(); // 맴버쉽 가입 추가
//						if(!msv.membershipChk(memberId)) {
//							
//						}
						if(svc.registMembership(ssp)==1) {
							if(msv.updateMembership(memberId)==1) {
								System.out.println("Update completed membership state !");
							}else if(msv.updateMembership(memberId)!=1) {
								System.out.println("Update failed membership state !");
							}
							map.put("retVal", ssp);
							map.put("retCode", "Success");
						}else {
							map.put("retCode", "Fail");
						}
						// 결과 상태를 json객체로 생성
						String json = gson.toJson(map);
						System.out.println("json : "+json);
						resp.getWriter().print(json);
						//req.getRequestDispatcher("/main.do").forward(req, resp);

	}

}
