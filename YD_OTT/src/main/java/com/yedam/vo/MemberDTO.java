package com.yedam.vo;

import lombok.Data;

@Data
public class MemberDTO {
 // VO 필드 정의
	private String memberId;
    private String password;
    private String name;
    private String email;
    private String phone;
    private String auth;
    private String joinDate;
    private String birthDate;
    private String isMembership; 
	
	
}
