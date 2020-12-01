package com.km.yak_erp.util;

import javax.persistence.Entity;
import javax.validation.constraints.NotEmpty;

import lombok.Data;

@Entity
public class login_command {
	@NotEmpty(message="아이디를 입력해주세요.")
    private String id;
 
    @NotEmpty(message="비밀번호를 입력해주세요.")
    private String pw;
    private boolean rememberId;
    
    
    public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getPw() {
		return pw;
	}


	public void setPw(String pw) {
		this.pw = pw;
	}


	public void setRememberId(boolean rememberId) {
		this.rememberId = rememberId;
	}


	public boolean isRememberId() {
        return rememberId;
    }
}
