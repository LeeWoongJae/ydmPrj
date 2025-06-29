package com.yedam.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.yedam.common.Control;
import com.yedam.service.ReviewService;
import com.yedam.service.ReviewServiceImpl;
import com.yedam.vo.ReviewVO;

public class AddReviewControl implements Control {

    @Override
    public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json;charset=UTF-8");

        String memberId = req.getParameter("memberId");
        int movieId = Integer.parseInt(req.getParameter("movieId"));
        int genreId = Integer.parseInt(req.getParameter("genreId"));
        String content = req.getParameter("content");
        int star = Integer.parseInt(req.getParameter("star"));

        ReviewVO vo = new ReviewVO();
        vo.setMemberId(memberId);
        vo.setMovieId(movieId);
        vo.setGenreId(genreId);
        vo.setContent(content);
        vo.setStar(star);

        ReviewService svc = new ReviewServiceImpl();
        int result = svc.insertReview(vo);

        Gson gson = new Gson();
        String json = gson.toJson(result == 1 ? vo : null);
        resp.getWriter().print(json);
    }
}
