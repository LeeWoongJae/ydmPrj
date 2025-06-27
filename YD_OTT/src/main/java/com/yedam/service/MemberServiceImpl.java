package com.yedam.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.yedam.common.DataSource;
import com.yedam.mapper.MemberMapper;
import com.yedam.vo.MemberDTO;
import com.yedam.vo.MemberVO;

public class MemberServiceImpl implements MemberService {
	SqlSession sqlSession = DataSource.getInstance().openSession();
	MemberMapper mapper = sqlSession.getMapper(MemberMapper.class);
	
	@Override
	public List<MemberVO> memberList() {
		// 
		return mapper.memberList();
	}

	@Override
	public MemberDTO login(String memberId) {
		
		return mapper.login(memberId);
	}

	@Override
	public MemberDTO loginCheck(String memberId, String password) {
		// TODO Auto-generated method stub
		return mapper.loginCheck(memberId, password);
	}

	@Override
	public int insertMember(MemberDTO member) {
		// TODO Auto-generated method stub
		return mapper.insertMember(member);
	}

}
