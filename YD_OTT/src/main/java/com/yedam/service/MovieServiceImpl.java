package com.yedam.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.yedam.common.DataSource;
import com.yedam.mapper.MovieMapper;
import com.yedam.vo.MovieVO;

public class MovieServiceImpl implements MovieService {
	SqlSession sqlSession = DataSource.getInstance().openSession();
	MovieMapper mapper = sqlSession.getMapper(MovieMapper.class);

	@Override
	public List<MovieVO> movieList() {
		// 영화목록(영화아이디필요)
		
		return mapper.selectList();
	}
	
	@Override
	public MovieVO getMovie(int movieId) {
		return mapper.selectMovie(movieId);
	}

	@Override
	public List<MovieVO> getKeyword(String title) {
		// TODO Auto-generated method stub
		
		return mapper.getMovie(title);
	}

}
