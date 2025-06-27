package com.yedam.vo;

import lombok.Data;

@Data
public class MovieVO {
	private int movieId; //PK
	private int genreId;
	private String title;
	private String description;
	private String thumbnail;
	private String videoUrl;
	private int totalStar;
	private int starCount;
	private int viewCount;
	private String titleSub;
	private String genreName;
	private String duration;
	private double rating;
	private String releaseDate;
}
