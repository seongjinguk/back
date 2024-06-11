package com.bitstudy.app.domain;

public class Category_filterDto {



    private String p_name;
    private Integer p_seqno;
    private String p_price;
    private String p_color;
    private String p_date;
    private Integer p_pop;
    private Integer p_size_seqnoFk;
    private Integer ps_size;
    private Integer p_gender_seqnoFk;
    private String pg_gender;

    public Category_filterDto() {}

    public Category_filterDto(String p_name, Integer p_seqno, String p_price, String p_color, String p_date,Integer p_pop, Integer p_size_seqnoFk, Integer ps_size, Integer p_gender_seqnoFk, String pg_gender) {
        this.p_name = p_name;
        this.p_seqno = p_seqno;
        this.p_price = p_price;
        this.p_color = p_color;
        this.p_date = p_date;
        this.p_pop = p_pop;
        this.p_size_seqnoFk = p_size_seqnoFk;
        this.ps_size = ps_size;
        this.p_gender_seqnoFk = p_gender_seqnoFk;
        this.pg_gender = pg_gender;
    }

    public String getP_name() {
        return p_name;
    }

    public void setP_name(String p_name) {
        this.p_name = p_name;
    }

    public Integer getP_seqno() {
        return p_seqno;
    }

    public void setP_seqno(Integer p_seqno) {
        this.p_seqno = p_seqno;
    }

    public String getP_price() {
        return p_price;
    }

    public void setP_price(String p_price) {
        this.p_price = p_price;
    }

    public String getP_color() {
        return p_color;
    }

    public void setP_color(String p_color) {
        this.p_color = p_color;
    }

    public String getP_date() {
        return p_date;
    }

    public void setP_date(String p_date) {
        this.p_date = p_date;
    }

    public Integer getP_pop() {
        return p_pop;
    }

    public void setP_pop(Integer p_pop) {
        this.p_pop = p_pop;
    }

    public Integer getP_size_seqnoFk() {
        return p_size_seqnoFk;
    }

    public void setP_size_seqnoFk(Integer p_size_seqnoFk) {
        this.p_size_seqnoFk = p_size_seqnoFk;
    }

    public Integer getPs_size() {
        return ps_size;
    }

    public void setPs_size(Integer ps_size) {
        this.ps_size = ps_size;
    }

    public Integer getP_gender_seqnoFk() {
        return p_gender_seqnoFk;
    }

    public void setP_gender_seqnoFk(Integer p_gender_seqnoFk) {
        this.p_gender_seqnoFk = p_gender_seqnoFk;
    }

    public String getPg_gender() {
        return pg_gender;
    }

    public void setPg_gender(String pg_gender) {
        this.pg_gender = pg_gender;
    }

    @Override
    public String toString() {
        return "Category_filterDto{" +
                "p_name='" + p_name + '\'' +
                ", p_seqno=" + p_seqno +
                ", p_price='" + p_price + '\'' +
                ", p_color='" + p_color + '\'' +
                ", p_date='" + p_date + '\'' +
                ", p_pop=" + p_pop +
                ", p_size_seqnoFk=" + p_size_seqnoFk +
                ", ps_size=" + ps_size +
                ", p_gender_seqnoFk=" + p_gender_seqnoFk +
                ", pg_gender='" + pg_gender + '\'' +
                '}';
    }
}
