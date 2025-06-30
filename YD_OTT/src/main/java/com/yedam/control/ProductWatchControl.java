package com.yedam.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.common.Control;
import com.yedam.service.MovieService;
import com.yedam.service.MovieServiceImpl;
import com.yedam.vo.MovieVO;

public class ProductWatchControl implements Control {

   @Override
   public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      // 파라미터 movieId 받기
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

        MovieService svc = new MovieServiceImpl();
        MovieVO mvo = svc.getMovie(movieId);  // ★ 여기 getMovieById(int id) 메서드 필요

        if (mvo == null) {
            resp.sendError(HttpServletResponse.SC_NOT_FOUND, "Movie not found");
            return;
        }

        // JSP로 상세 페이지 포워딩
        req.setAttribute("mv", mvo);
        req.getRequestDispatcher("product/productWatch.tiles").forward(req, resp);

   }

}
