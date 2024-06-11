package com.bitstudy.app.domain;

public class CartDto {
    private Integer c_seqno;
    private Integer p_seqnoFk;
    private Integer u_seqnoFk;
    private int c_count;
    private String c_date;
    private int c_size;
    private int c_price;

    private UserDto userDto;
    private ProductBuyDto productBuyDto;
private  CategoryDto categoryDto;
    public CartDto() {
    }

    public CartDto(Integer c_seqno, Integer p_seqnoFk, Integer u_seqnoFk,int c_size, int c_price,int c_count, String c_date) {
        this.c_seqno = c_seqno;
        this.p_seqnoFk = p_seqnoFk;
        this.u_seqnoFk = u_seqnoFk;
        this.c_size = c_size;
        this.c_price = c_price;
        this.c_count = c_count;
        this.c_date = c_date;
    }

    public CartDto(Integer c_seqno, Integer p_seqnoFk, Integer u_seqnoFk, int c_count, String c_date, UserDto userDto, ProductBuyDto productBuyDto, CategoryDto categoryDto) {
        this.c_seqno = c_seqno;
        this.p_seqnoFk = p_seqnoFk;
        this.u_seqnoFk = u_seqnoFk;
        this.c_count = c_count;
        this.c_date = c_date;
        this.userDto = userDto;
        this.productBuyDto = productBuyDto;
        this.categoryDto = categoryDto;
    }

    public Integer getC_seqno() {
        return c_seqno;
    }

    public void setC_seqno(Integer c_seqno) {
        this.c_seqno = c_seqno;
    }

    public Integer getP_seqnoFk() {
        return p_seqnoFk;
    }

    public void setP_seqnoFk(Integer p_seqnoFk) {
        this.p_seqnoFk = p_seqnoFk;
    }

    public Integer getU_seqnoFk() {
        return u_seqnoFk;
    }

    public void setU_seqnoFk(Integer u_seqnoFk) {
        this.u_seqnoFk = u_seqnoFk;
    }
    public int getC_size() {
        return c_size;
    }

    public void setC_size(int c_size) {
        this.c_size = c_size;
    }

    public int getC_price() {
        return c_price;
    }

    public void setC_price(int c_price) {
        this.c_price = c_price;
    }


    public int getC_count() {
        return c_count;
    }

    public void setC_count(int c_count) {
        this.c_count = c_count;
    }

    public String getC_date() {
        return c_date;
    }

    public void setC_date(String c_date) {
        this.c_date = c_date;
    }

    public UserDto getUserDto() {
        return userDto;
    }

    public void setUserDto(UserDto userDto) {
        this.userDto = userDto;
    }

    public ProductBuyDto getProductBuyDto() {
        return productBuyDto;
    }

    public void setProductBuyDto(ProductBuyDto productBuyDto) {
        this.productBuyDto = productBuyDto;
    }

    public CategoryDto getCategoryDto() {
        return categoryDto;
    }

    public void setCategoryDto(CategoryDto categoryDto) {
        this.categoryDto = categoryDto;
    }

    @Override
    public String toString() {
        return "CartDto{" +
                "c_seqno=" + c_seqno +
                ", p_seqnoFk=" + p_seqnoFk +
                ", u_seqnoFk=" + u_seqnoFk +
                ", c_count=" + c_count +
                ", c_date='" + c_date + '\'' +
                ", c_size=" + c_size +
                ", c_price=" + c_price +
                ", userDto=" + userDto +
                ", productBuyDto=" + productBuyDto +
                ", categoryDto=" + categoryDto +
                '}';
    }
}
