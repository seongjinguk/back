package com.bitstudy.app.domain;

public class UserLoginDto {
    private String u_id;
    private String u_pw;
    private boolean u_rid;

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


    public boolean isU_rid() {
        return u_rid;
    }

    public void setU_rid(boolean u_rid) {
        this.u_rid = u_rid;
    }

    @Override
    public String toString() {
        return "UserLoginDto{" +
                "u_id='" + u_id + '\'' +
                ", u_pw='" + u_pw + '\'' +
                ", u_rid=" + u_rid + '\''+

                '}';
    }
}
