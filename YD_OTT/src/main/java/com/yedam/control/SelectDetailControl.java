package com.yedam.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.common.Control;
import com.yedam.service.MovieService;
import com.yedam.service.MovieServiceImpl;
import com.yedam.service.ReviewService;
import com.yedam.service.ReviewServiceImpl;
import com.yedam.vo.MovieVO;
import com.yedam.vo.ReviewVO;

public class SelectDetailControl implements Control {

    @Override
    public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String movieIdStr = req.getParameter("movieId");
        if (movieIdStr == null || movieIdStr.isEmpty()) {
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "movieId parameter missing");
            return;
        }

        int movieId = 0;
        try {
            movieId = Integer.parseInt(movieIdStr);
        } catch (NumberFormatException e) {
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid movieId");
            return;
        }

        // 1. 영화 정보 조회
        MovieService svc = new MovieServiceImpl();
        MovieVO mvo = svc.getMovie(movieId);

        if (mvo == null) {
            resp.sendError(HttpServletResponse.SC_NOT_FOUND, "Movie not found");
            return;
        }

        // 2. 리뷰 목록 조회
        ReviewService revuService = new ReviewServiceImpl();
        List<ReviewVO> reviewList = revuService.reviewList(movieId);
        
        
        
        // 3. 별점 평균 계산
        double avgStar = 0;
        if (!reviewList.isEmpty()) {
            int sum = 0;
            for (ReviewVO r : reviewList) {
                sum += r.getStar();
            }
            avgStar = Math.round(((double) sum / reviewList.size()) * 10) / 10.0; // 소수점 1자리 반올림
        }

        // 4. JSP에 전달
        req.setAttribute("mv", mvo); // 영화 정보
        req.setAttribute("reviewList", reviewList); // 리뷰 목록
        req.setAttribute("avgStar", avgStar); // 평균 별점
        
        // 5. forward
        req.getRequestDispatcher("product/productDetail.tiles").forward(req, resp);
    }
}
