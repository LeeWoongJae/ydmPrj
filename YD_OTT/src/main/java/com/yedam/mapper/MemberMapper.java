package com.yedam.mapper;

import java.util.List;

import com.yedam.vo.MemberDTO;
import com.yedam.vo.MemberVO;

public interface MemberMapper {

   // 계정 관련 매퍼
	List<MemberVO> memberList();
	MemberDTO login(String memberId);
	
	// 로그인 확인
    MemberDTO loginCheck(MemberDTO member);
    // 회원가입
    int insertMember(MemberDTO member);
	
	
	
}
