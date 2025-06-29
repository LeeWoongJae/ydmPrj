package com.yedam.vo;

import java.util.Date;

import lombok.Data;

@Data
public class ReviewVO {
    private int reviewId;
    private int movieId;
    private int genreId;
    private String memberId;
    private String content;
    private int star;
    private Date regDate;
}
