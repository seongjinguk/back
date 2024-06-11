package com.bitstudy.app.domain;

public class UserAddrDto {
    private Integer a_seqno;



    private Integer u_seqnoFk;
    private String a_rec;
    private int a_zipcode;
    private String a_addr;
    private String a_addr_detail;
    private String a_group;
    private UserDto userDto;



    public UserAddrDto() {
    }
    public UserAddrDto(Integer a_seqno, Integer u_seqnoFk, String a_rec, int a_zipcode, String a_addr, String a_addr_detail, String a_group) {
        this.a_seqno = a_seqno;
        this.u_seqnoFk = u_seqnoFk;
        this.a_rec = a_rec;
        this.a_zipcode = a_zipcode;
        this.a_addr = a_addr;
        this.a_addr_detail = a_addr_detail;
        this.a_group = a_group;
    }
    public UserAddrDto(Integer a_seqno, Integer u_seqnoFk, String a_rec, int a_zipcode, String a_addr, String a_addr_detail, String a_group, UserDto userDto) {
        this.a_seqno = a_seqno;
        this.u_seqnoFk = u_seqnoFk;
        this.a_rec = a_rec;
        this.a_zipcode = a_zipcode;
        this.a_addr = a_addr;
        this.a_addr_detail = a_addr_detail;
        this.a_group = a_group;
        this.userDto = userDto;
    }



    public Integer getA_seqno() {
        return a_seqno;
    }

    public void setA_seqno(Integer a_seqno) {
        this.a_seqno = a_seqno;
    }

    public Integer getU_seqnoFk() {
        return u_seqnoFk;
    }

    public void setU_seqnoFk(Integer u_seqnoFk) {
        this.u_seqnoFk = u_seqnoFk;
    }


    public String getA_rec() {
        return a_rec;
    }

    public void setA_rec(String a_rec) {
        this.a_rec = a_rec;
    }

    public int getA_zipcode() {
        return a_zipcode;
    }

    public void setA_zipcode(int a_zipcode) {
        this.a_zipcode = a_zipcode;
    }

    public String getA_addr() {
        return a_addr;
    }

    public void setA_addr(String a_addr) {
        this.a_addr = a_addr;
    }

    public String getA_addr_detail() {
        return a_addr_detail;
    }

    public void setA_addr_detail(String a_addr_detail) {
        this.a_addr_detail = a_addr_detail;
    }

    public String getA_group() {
        return a_group;
    }

    public void setA_group(String a_group) {
        this.a_group = a_group;
    }
    public UserDto getUserDto() {
        return userDto;
    }

    public void setUserDto(UserDto userDto) {
        this.userDto = userDto;
    }

    @Override
    public String toString() {
        return "UserAddrDto{" +
                "a_seqno=" + a_seqno +
                ", u_seqnoFk=" + u_seqnoFk +
                ", a_rec='" + a_rec + '\'' +
                ", a_zipcode=" + a_zipcode +
                ", a_addr='" + a_addr + '\'' +
                ", a_addr_detail='" + a_addr_detail + '\'' +
                ", a_group='" + a_group + '\'' +
                ", userDto=" + userDto +
                '}';
    }
}
