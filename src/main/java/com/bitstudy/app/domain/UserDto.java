package com.bitstudy.app.domain;

import java.sql.Date;

public class UserDto {
    private Integer u_seqno;
    private String u_id;
    private String u_pw;
    private String u_name;
    private String u_birth;
    private String u_gender;
    private String u_phone;
    private String u_email;
    private String u_quit;
    private String u_reg_date;
    private String u_foot_shape;
    public UserDto() { }

    public UserDto(Integer u_seqno, String u_id, String u_pw, String u_name, String u_email, String u_birth, String u_gender, String u_phone, String u_quit, String u_reg_date, String u_foot_shape) {
        this.u_seqno = u_seqno;
        this.u_id = u_id;
        this.u_pw = u_pw;
        this.u_name = u_name;
        this.u_email = u_email;
        this.u_birth = u_birth;
        this.u_gender = u_gender;
        this.u_phone = u_phone;
        this.u_quit = u_quit;
        this.u_reg_date = u_reg_date;
        this.u_foot_shape = u_foot_shape;
    }



    public Integer getU_seqno() {
        return u_seqno;
    }

    public void setU_seqno(Integer u_seqno) {
        this.u_seqno = u_seqno;
    }

    public String getU_id() {
        return u_id;
    }

    public void setU_id(String u_id) {
        this.u_id = u_id;
    }

    public String getU_pw() {
        return u_pw;
    }

    public void setU_pw(String u_pw) {
        this.u_pw = u_pw;
    }

    public String getU_name() {
        return u_name;
    }

    public void setU_name(String u_name) {
        this.u_name = u_name;
    }

    public String getU_email() {
        return u_email;
    }

    public void setU_email(String u_email) {
        this.u_email = u_email;
    }

    public String getU_birth() {
        return u_birth;
    }

    public void setU_birth(String u_birth) {
        this.u_birth = u_birth;
    }

    public String getU_gender() {
        return u_gender;
    }

    public void setU_gender(String u_gender) {
        this.u_gender = u_gender;
    }

    public String getU_phone() {
        return u_phone;
    }

    public void setU_phone(String u_phone) {
        this.u_phone = u_phone;
    }

    public String getU_quit() {
        return u_quit;
    }

    public void setU_quit(String u_quit) {
        this.u_quit = u_quit;
    }

    public String getU_reg_date() {
        return u_reg_date;
    }

    public void setU_reg_date(String u_reg_date) {
        this.u_reg_date = u_reg_date;
    }
    public String getU_foot_shape() {
        return u_foot_shape;
    }

    public void setU_foot_shape(String u_foot_shape) {
        this.u_foot_shape = u_foot_shape;
    }

    @Override
    public String toString() {
        return "UserDto{" +
                "u_seqno=" + u_seqno +
                ", u_id='" + u_id + '\'' +
                ", u_pw='" + u_pw + '\'' +
                ", u_name='" + u_name + '\'' +
                ", u_birth='" + u_birth + '\'' +
                ", u_gender='" + u_gender + '\'' +
                ", u_phone='" + u_phone + '\'' +
                ", u_email='" + u_email + '\'' +
                ", u_quit='" + u_quit + '\'' +
                ", u_reg_date='" + u_reg_date + '\'' +
                ", u_foot_shape='" + u_foot_shape + '\'' +
                '}';
    }
}


