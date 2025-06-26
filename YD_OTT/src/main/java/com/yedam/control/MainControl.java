package com.yedam.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.common.Control;
import com.yedam.service.MovieService;
import com.yedam.service.MovieServiceImpl;
import com.yedam.vo.MovieVO;

public class MainControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 1. 서비스 호출
		MovieService svc = new MovieServiceImpl();
		List<MovieVO> list = svc.movieList();
		System.out.println(list.size());


		// 2. request 범위에 세팅
		req.setAttribute("list", list);
		req.getRequestDispatcher("product/productList.tiles").forward(req, resp);
	}

}
