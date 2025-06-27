package com.yedam.service;

import org.apache.ibatis.session.SqlSession;

import com.yedam.common.DataSource;
import com.yedam.mapper.MembershipMapper;

public class MembershipServiceImpl implements MembershipService {
	SqlSession sqlSession = DataSource.getInstance().openSession();
	MembershipMapper mapper = sqlSession.getMapper(MembershipMapper.class);
	@Override
	public int registMembership(String memberId, int planNO, String cnt) {

		return mapper.registMembership(memberId, planNO, cnt);
	}


}
