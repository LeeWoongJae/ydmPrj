package com.yedam.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.yedam.common.Control;
import com.yedam.service.ReviewService;
import com.yedam.service.ReviewServiceImpl;

public class DeleteReviewControl implements Control {

    @Override
    public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json;charset=UTF-8");

        // 요청 파라미터 수집
        String reviewIdStr = req.getParameter("reviewId");
        String memberId = req.getParameter("memberId");

        int reviewId = 0;
        try {
            reviewId = Integer.parseInt(reviewIdStr);
        } catch (NumberFormatException e) {
            resp.getWriter().print("{\"retCode\":\"NG\", \"msg\":\"Invalid reviewId\"}");
            return;
        }

        ReviewService svc = new ReviewServiceImpl();
        int result = svc.deleteReview(reviewId, memberId);

        // 결과 반환
        Gson gson = new Gson();
        String json = gson.toJson(result == 1 
            ? new ResultJson("OK", "삭제 성공") 
            : new ResultJson("NG", "삭제 실패"));
        resp.getWriter().print(json);
    }

    // 내부 클래스: JSON 응답용
    class ResultJson {
        String retCode;
        String msg;

        ResultJson(String retCode, String msg) {
            this.retCode = retCode;
            this.msg = msg;
        }
    }
}
