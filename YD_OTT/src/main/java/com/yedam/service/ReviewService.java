package com.yedam.service;

import java.util.List;
import com.yedam.vo.ReviewVO;

public interface ReviewService {
    
    // 리뷰 등록
    int insertReview(ReviewVO vo);
    
    // 특정 영화의 리뷰 목록 조회
    List<ReviewVO> reviewList(int movieId);
    
    // 리뷰 삭제
    int deleteReview(int reviewId, String memberId);
    
    // 리뷰 수정
    int updateReview(ReviewVO vo);
}
