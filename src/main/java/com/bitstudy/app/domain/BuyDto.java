package com.bitstudy.app.domain;

import java.util.ArrayList;
import java.util.List;

public class BuyDto {
    private int b_seqno;
    private Integer p_seqnoFk;
    private Integer u_seqnoFk;
    private String b_date;
    private int b_price;
    private String b_rec;
    private String b_phone;
    private int b_zipcode;
    private String b_addr;
    private String b_addr_detail;
    private String b_message;


    private int b_itemcount;
    private String b_buy;
    private int b_code;


    public BuyDto(int b_code, int b_seqno) {
        this.b_code = b_code;
        this.b_seqno = b_seqno;
    }

    private UserDto userDto;
    private CategoryDto categoryDto;
    public BuyDto(int b_seqno, Integer p_seqnoFk, Integer u_seqnoFk, String b_date, int b_price, String b_rec, String b_phone, int b_zipcode, String b_addr, String b_addr_detail, String b_message, int b_itemcount, String b_buy,UserDto userDto, CategoryDto categoryDto) {
        this.b_seqno = b_seqno;
        this.p_seqnoFk = p_seqnoFk;
        this.u_seqnoFk = u_seqnoFk;
        this.b_date = b_date;
        this.b_price = b_price;
        this.b_rec = b_rec;
        this.b_phone = b_phone;
        this.b_zipcode = b_zipcode;
        this.b_addr = b_addr;
        this.b_addr_detail = b_addr_detail;
        this.b_message = b_message;
        this.b_itemcount = b_itemcount;
        this.b_buy = b_buy;
        this.userDto = userDto;
        this.categoryDto = categoryDto;
    }


    public BuyDto() {
    }

    public BuyDto(int b_seqno, Integer p_seqnoFk, Integer u_seqnoFk, String b_date, int b_price, String b_rec, String b_phone, int b_zipcode, String b_addr, String b_addr_detail, String b_message, int b_itemcount, String b_buy, int b_code) {
        this.b_seqno = b_seqno;
        this.p_seqnoFk = p_seqnoFk;
        this.u_seqnoFk = u_seqnoFk;
        this.b_date = b_date;
        this.b_price = b_price;
        this.b_rec = b_rec;
        this.b_phone = b_phone;
        this.b_zipcode = b_zipcode;
        this.b_addr = b_addr;
        this.b_addr_detail = b_addr_detail;
        this.b_message = b_message;
        this.b_itemcount = b_itemcount;
        this.b_buy = b_buy;
        this.b_code = b_code;
    }

    public int getB_seqno() {
        return b_seqno;
    }

    public void setB_seqno(int b_seqno) {
        this.b_seqno = b_seqno;
    }

    public int getP_seqnoFk() {
        return p_seqnoFk;
    }

    public void setP_seqnoFk(int p_seqnoFk) {
        this.p_seqnoFk = p_seqnoFk;
    }

    public int getU_seqnoFk() {
        return u_seqnoFk;
    }

    public void setU_seqnoFk(int u_seqnoFk) {
        this.u_seqnoFk = u_seqnoFk;
    }

    public String getB_date() {
        return b_date;
    }

    public void setB_date(String b_date) {
        this.b_date = b_date;
    }

    public int getB_price() {
        return b_price;
    }

    public void setB_price(int b_price) {
        this.b_price = b_price;
    }

    public String getB_rec() {
        return b_rec;
    }

    public void setB_rec(String b_rec) {
        this.b_rec = b_rec;
    }

    public String getB_phone() {
        return b_phone;
    }

    public void setB_phone(String b_phone) {
        this.b_phone = b_phone;
    }

    public int getB_zipcode() {
        return b_zipcode;
    }

    public void setB_zipcode(int b_zipcode) {
        this.b_zipcode = b_zipcode;
    }

    public String getB_addr() {
        return b_addr;
    }

    public void setB_addr(String b_addr) {
        this.b_addr = b_addr;
    }

    public String getB_addr_detail() {
        return b_addr_detail;
    }

    public void setB_addr_detail(String b_addr_detail) {
        this.b_addr_detail = b_addr_detail;
    }

    public String getB_message() {
        return b_message;
    }

    public void setB_message(String b_message) {
        this.b_message = b_message;
    }

    public int getB_itemcount() {
        return b_itemcount;
    }

    public void setB_itemcount(int b_itemcount) {
        this.b_itemcount = b_itemcount;
    }

    public String getB_buy() {
        return b_buy;
    }

    public void setB_buy(String b_buy) {
        this.b_buy = b_buy;
    }
    public UserDto getUserDto() {
        return userDto;
    }

    public void setUserDto(UserDto userDto) {
        this.userDto = userDto;
    }

    public CategoryDto getCategoryDto() {
        return categoryDto;
    }

    public void setCategoryDto(CategoryDto categoryDto) {
        this.categoryDto = categoryDto;
    }

    public int getB_code() {
        return b_code;
    }

    public void setB_code(int b_code) {
        this.b_code = b_code;
    }

    @Override
    public String toString() {
        return "BuyDto{" +
                "b_seqno=" + b_seqno +
                ", p_seqnoFk=" + p_seqnoFk +
                ", u_seqnoFk=" + u_seqnoFk +
                ", b_date='" + b_date + '\'' +
                ", b_price=" + b_price +
                ", b_rec='" + b_rec + '\'' +
                ", b_phone='" + b_phone + '\'' +
                ", b_zipcode=" + b_zipcode +
                ", b_addr='" + b_addr + '\'' +
                ", b_addr_detail='" + b_addr_detail + '\'' +
                ", b_message='" + b_message + '\'' +
                ", b_itemcount=" + b_itemcount +
                ", b_buy='" + b_buy + '\'' +
                ", b_code=" + b_code +
                ", userDto=" + userDto +
                ", categoryDto=" + categoryDto +
                '}';
    }
}
