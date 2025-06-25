package com.yedam.service;

import java.util.List;

import com.yedam.vo.MemberVO;

public interface MemberService {
	public List<MemberVO> memberList();

	public MemberVO login(String id, String pw);
}
