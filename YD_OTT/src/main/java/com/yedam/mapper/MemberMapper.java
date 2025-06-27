package com.yedam.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.yedam.vo.MemberDTO;
import com.yedam.vo.MemberVO;

public interface MemberMapper {

   // 계정 관련 매퍼
	List<MemberVO> memberList();
	public MemberDTO login(String memberId);
	
	// 로그인 확인
    public MemberDTO loginCheck(@Param("memberId")String memberId, @Param("password")String password);
    // 회원가입
    public int insertMember(MemberDTO member);
	int updateMembership(String memberId);
	
	
	
}
