package com.yedam.service;

import java.util.List;

import com.yedam.vo.MovieVO;

public interface MovieService {
	public List<MovieVO> movieList(); // 영화목록
	public MovieVO getMovie(int movieId); // 단건조회.
}
