package com.yedam.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.yedam.vo.MemberVO;

public interface MemberMapper {

   // 계정 관련 매퍼
	List<MemberVO> memberList();
	MemberVO login(@Param("id")String id, @Param("pw")String pw);
	
	
	
	
	
	
}
