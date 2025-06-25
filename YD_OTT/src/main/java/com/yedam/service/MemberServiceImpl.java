package com.yedam.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.yedam.common.DataSource;
import com.yedam.mapper.MemberMapper;
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
	public MemberVO login(String id, String pw) {
		// TODO Auto-generated method stub
		return null;
	}

}
