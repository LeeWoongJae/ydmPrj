package com.yedam.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.yedam.common.MybatisUtil;
import com.yedam.mapper.ReviewMapper;
import com.yedam.vo.ReviewVO;

public class ReviewServiceImpl implements ReviewService {
    ReviewMapper mapper = MybatisUtil.getSession(true).getMapper(ReviewMapper.class);

    @Override
    public int insertReview(ReviewVO vo) {
        int result = mapper.insertReview(vo); // ✅ 인스턴스 호출
        if (result == 1) {
            Map<String, Object> paramMap = new HashMap<>();
            paramMap.put("movieId", vo.getMovieId());
            paramMap.put("star", vo.getStar());
            mapper.updateMovieStar(paramMap); // ✅ 인스턴스 호출
        }
        return result;
    }

    @Override
    public List<ReviewVO> reviewList(int movieId) {
        return mapper.reviewList(movieId);
    }

    @Override
    public int deleteReview(int reviewId, String memberId) {
        return mapper.deleteReview(reviewId, memberId);
    }

    @Override
    public int updateReview(ReviewVO vo) {
        return mapper.updateReview(vo);
    }
}
