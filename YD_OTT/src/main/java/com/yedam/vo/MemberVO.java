package com.yedam.vo;

import java.util.Date;

import lombok.Data;
@Data
public class MemberVO {
	private String memberId , password , name , email, phone, auth , birthDate , isMembership;
	private Date joinDate;
}
