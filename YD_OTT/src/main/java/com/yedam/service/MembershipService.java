package com.yedam.service;

import com.yedam.vo.SubScriptionVO;

public interface MembershipService {
	public int registMembership(SubScriptionVO ssp);// 맴버쉽 가입

	public int removeMembership(String memberId);// 맴버쉽 가입되어져있다면 탈퇴
	
	public SubScriptionVO selectMembership(String memberId);// 맴버쉽 가입되어져있는지 검색
}
