package com.sist.vo;
/*

 USERID                                    NOT NULL VARCHAR2(100)
 USERPWD                                   NOT NULL VARCHAR2(500)
 USERNAME                                  NOT NULL VARCHAR2(100)
 NICKNAME                                  NOT NULL VARCHAR2(100)
 AGE                                       NOT NULL NUMBER
 SEX                                       NOT NULL CHAR(1)
 EMAIL                                     NOT NULL VARCHAR2(100)
 PHONE                                              VARCHAR2(100)
 POSTCODE                                  NOT NULL VARCHAR2(200)
 ADDR                                      NOT NULL VARCHAR2(500)
 REGDATE                                   NOT NULL DATE
 HOPE_JOB                                           VARCHAR2(100)
 ENABLED                                   NOT NULL NUMBER
 MENTOR                                    NOT NULL NUMBER
 */

import lombok.Data;

@Data
public class MemberVO {
	private int age,enabled,mentor;
	private String userId,userPwd,userName,nickname,sex,email,phone,postcode,addr,regdate,hope_job;
}
