package com.yedam.vo;

import lombok.Data;

@Data
public class MovieVO {
	private int movieId;
	private int genreId;
	private String title;
	private String description;
	private String thumbNail;
	private String videoUrl;
	private int totalStar;
	private int starCount;
	private int viewCount;
}
