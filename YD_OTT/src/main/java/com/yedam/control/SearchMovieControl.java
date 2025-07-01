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

public class SearchMovieControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 
		String title = req.getParameter("title");
		MovieService msv = new MovieServiceImpl();
		List<MovieVO> mv = msv.getKeyword(title);
		req.setAttribute("mlist", mv);
		req.setAttribute("title", title);
		req.getRequestDispatcher("product/searchMovie.tiles").forward(req, resp);

	}

}
