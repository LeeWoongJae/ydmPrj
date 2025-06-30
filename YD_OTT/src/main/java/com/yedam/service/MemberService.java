package com.yedam.service;

import java.util.List;

import com.yedam.vo.MemberDTO;
import com.yedam.vo.MemberVO;

public interface MemberService {
	public List<MemberVO> memberList();

	public MemberDTO login(String memberId);
	
	public MemberDTO loginCheck(String memberId, String password); // 로그인
	public int insertMember(MemberDTO member);  // 회원가입

	public int updateMembership(String memberId);//맴버쉽 가입

	public MemberDTO membershipChk(String memberId);// 맴버쉽 확인
	public int ResetMembership(String memberId); // 맴버쉽 가입 취소
	
}
