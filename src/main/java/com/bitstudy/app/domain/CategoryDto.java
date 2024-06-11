package com.bitstudy.app.domain;

public class CategoryDto {

    private String p_name;
    private int p_price;
    private Integer p_seqno;
    private String p_color;
    private Integer page; // 페이지 번호
    private Integer pageSize; // 페이지 크기


// 기존 getter 및 setter


    public int getP_seqno() {
        return p_seqno;
    }

    public void setP_seqno(int p_seqno) {
        this.p_seqno = p_seqno;
    }

    public String getP_name() {
        return p_name;
    }

    public void setP_name(String p_name) {
        this.p_name = p_name;
    }

    public int getP_price() {
        return p_price;
    }

    public void setP_price(int p_price) {
        this.p_price = p_price;
    }

    // 새로운 page 및 pageSize 속성의 getter 및 setter

    public Integer getPage() {
        return page;
    }

    public void setPage(Integer page) {
        this.page = page;
    }

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }

    public String getP_color() {
        return p_color;
    }

    public void setP_color(String p_color) {
        this.p_color = p_color;
    }
    @Override
    public String toString() {
        return "CategoryDto{" +
                "p_name='" + p_name + '\'' +
                ", p_price=" + p_price +
                ", p_seqno=" + p_seqno +
                ", p_color='" + p_color + '\'' +
                ", page=" + page +
                ", pageSize=" + pageSize +
                '}';
    }

}
