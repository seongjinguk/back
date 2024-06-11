package com.bitstudy.app.domain;

public class ProductBuyDto {
    private int ps_seqno;



    private int p_seqnoFk;
    private int ps_size;
    private int ps_count;
    private CategoryDto categoryDto;

    public ProductBuyDto(int p_seqnoFk, int ps_size, int ps_count) {
        this.p_seqnoFk = p_seqnoFk;
        this.ps_size = ps_size;
        this.ps_count = ps_count;
    }
    public CategoryDto getCategoryDto() {
        return categoryDto;
    }

    public void setCategoryDto(CategoryDto categoryDto) {
        this.categoryDto = categoryDto;
    }

    public ProductBuyDto() {
    }
    public ProductBuyDto(int ps_seqno, int p_seqnoFk, int ps_size, int ps_count, CategoryDto categoryDto) {
        this.ps_seqno = ps_seqno;
        this.p_seqnoFk = p_seqnoFk;
        this.ps_size = ps_size;
        this.ps_count = ps_count;
        this.categoryDto = categoryDto;
    }

    public int getPs_seqno() {
        return ps_seqno;
    }

    public void setPs_seqno(int ps_seqno) {
        this.ps_seqno = ps_seqno;
    }

    public int getP_seqnoFk() {
        return p_seqnoFk;
    }

    public void setP_seqnoFk(int p_seqnoFk) {
        this.p_seqnoFk = p_seqnoFk;
    }

    public int getPs_size() {
        return ps_size;
    }

    public void setPs_size(int ps_size) {
        this.ps_size = ps_size;
    }

    public int getPs_count() {
        return ps_count;
    }

    public void setPs_count(int ps_count) {
        this.ps_count = ps_count;
    }

    @Override
    public String toString() {
        return "ProductBuyDto{" +
                "ps_seqno=" + ps_seqno +
                ", p_seqnoFk=" + p_seqnoFk +
                ", ps_size=" + ps_size +
                ", ps_count=" + ps_count +
                ", categoryDto=" + categoryDto +
                '}';
    }
}
