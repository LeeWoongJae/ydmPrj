package com.yedam.service;

import org.apache.ibatis.session.SqlSession;

import com.yedam.common.DataSource;
import com.yedam.mapper.MembershipMapper;
import com.yedam.vo.SubScriptionVO;

public class MembershipServiceImpl implements MembershipService {
	SqlSession sqlSession = DataSource.getInstance().openSession();
	MembershipMapper mapper = sqlSession.getMapper(MembershipMapper.class);
	@Override
	public int registMembership(SubScriptionVO ssp) {
		int r = mapper.registMembership(ssp);
		if(r==1) {
			sqlSession.commit();
		}
		return r; 
	}
	@Override
	public int removeMembership(String memberId) {
		int r = mapper.removeMembership(memberId);
		if(r == 1) {sqlSession.commit();}
		return r;
	}
	@Override
	public SubScriptionVO selectMembership(String memberId) {
		// TODO Auto-generated method stub
		return mapper.selectMembership(memberId);
	}


}
