package com.yedam.mapper;

import com.yedam.vo.SubScriptionVO;

public interface MembershipMapper {
	// 맴버쉽 가입
	public int registMembership(SubScriptionVO ssp);

	public int removeMembership(String memberId);
	public SubScriptionVO selectMembership(String memberId);
}
