package com.yedam.service;

import java.util.List;

import com.yedam.vo.MemberDTO;
import com.yedam.vo.MemberVO;

public interface MemberService {
	public List<MemberVO> memberList();

	public MemberDTO login(String memberId);
	
	MemberDTO loginCheck(MemberDTO member);       // 로그인
	int insertMember(MemberDTO member);           // 회원가입
}
