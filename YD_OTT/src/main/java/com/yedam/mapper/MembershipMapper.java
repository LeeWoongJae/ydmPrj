package com.yedam.mapper;

import org.apache.ibatis.annotations.Param;

public interface MembershipMapper {
	// 맴버쉽 가입
	public int registMembership(@Param("id")String memberId, @Param("pno")int planNo , @Param("lfdate")String cnt);
	
}
