package com.yedam.service;

import java.util.List;
import org.apache.ibatis.session.SqlSession;

import com.yedam.common.DataSource;
import com.yedam.mapper.MemberMapper;
import com.yedam.vo.MemberDTO;
import com.yedam.vo.MemberVO;

public class MemberServiceImpl implements MemberService {
    SqlSession sqlSession = DataSource.getInstance().openSession(true); 
    MemberMapper mapper = sqlSession.getMapper(MemberMapper.class);

    @Override
    public List<MemberVO> memberList() {
        return mapper.memberList();
    }

    @Override
    public MemberDTO login(String memberId) {
        return mapper.login(memberId);
    }

    @Override
    public MemberDTO loginCheck(String memberId, String password) {
        return mapper.loginCheck(memberId, password);
    }

	@Override
	public int updateMembership(String memberId) {
		// 맴버쉽 가입하면 가입했다고 상태를 변경
		int r = mapper.updateMembership(memberId);
		if(r==1) {
			sqlSession.commit();
			
		}
		return r; 
	}

	@Override
	public MemberDTO membershipChk(String memberId) {
		
		return mapper.membershipTrueChk(memberId);
	}

	@Override
	public int ResetMembership(String memberId) {
		// TODO Auto-generated method stub
		// 맴버쉽 가입 상태 초기화
		int r = mapper.ResetMembership(memberId);
		if(r==1) {
			sqlSession.commit();
		}
		return r;
	}


    @Override
    public int insertMember(MemberDTO member) {
        return mapper.insertMember(member); 
    }
}

