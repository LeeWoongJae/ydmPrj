package com.yedam.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.yedam.vo.ReviewVO;

public interface ReviewMapper {
    int insertReview(ReviewVO vo);
    List<ReviewVO> reviewList(int movieId);
    int deleteReview(@Param("reviewId")int reviewId,@Param("memberId")String memberId);
    int updateReview(ReviewVO vo);
    int updateMovieStar(Map<String, Object> map);
}
