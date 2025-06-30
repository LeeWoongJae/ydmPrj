package com.yedam.mapper;

import java.util.List;

import com.yedam.vo.MovieVO;

public interface MovieMapper {
	public List<MovieVO> selectList();
	public MovieVO selectMovie(int mid);
	public List<MovieVO> getMovie(String title);
}
