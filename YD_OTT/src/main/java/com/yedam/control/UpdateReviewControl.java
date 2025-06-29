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

public class UpdateReviewControl implements Control {

    @Override
    public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json;charset=UTF-8");

        try {
            // 파라미터 수집
            int reviewId = Integer.parseInt(req.getParameter("reviewId"));
            String memberId = req.getParameter("memberId");
            String content = req.getParameter("content");
            int star = Integer.parseInt(req.getParameter("star"));

            // VO 설정
            ReviewVO vo = new ReviewVO();
            vo.setReviewId(reviewId);
            vo.setMemberId(memberId);
            vo.setContent(content);
            vo.setStar(star);

            // 서비스 호출
            ReviewService svc = new ReviewServiceImpl();
            int result = svc.updateReview(vo);

            // 결과 JSON 응답
            Gson gson = new Gson();
            String json = gson.toJson(result == 1
                ? new ResultJson("OK", "수정 성공")
                : new ResultJson("NG", "수정 실패"));
            resp.getWriter().print(json);

        } catch (Exception e) {
            e.printStackTrace();
            resp.getWriter().print("{\"retCode\":\"NG\", \"msg\":\"예외 발생\"}");
        }
    }

    // 내부 클래스: 응답 구조
    class ResultJson {
        String retCode;
        String msg;

        public ResultJson(String retCode, String msg) {
            this.retCode = retCode;
            this.msg = msg;
        }
    }
}
