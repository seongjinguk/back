package com.bitstudy.app.domain;

public class ReviewDto {
    private Integer r_seqno;
    private Integer r_pseqnoFk;
    private Integer r_useqnoFk;
    private int r_bcode ;
    private String r_comment ;
    private int r_rec ;
    private int r_rate;
    private String r_reg_date;
    private BuyDto buyDto;
    private CategoryDto categoryDto;

    public ReviewDto() {
    }

    public ReviewDto(Integer r_seqno,Integer r_pseqnoFk, Integer r_useqnoFk, int r_bcode, String r_comment, int r_rec, int r_rate, String r_reg_date) {
        this.r_seqno = r_seqno;
        this.r_useqnoFk = r_useqnoFk;
        this.r_bcode = r_bcode;
        this.r_comment = r_comment;
        this.r_rec = r_rec;
        this.r_rate = r_rate;
        this.r_reg_date = r_reg_date;
    }

    public ReviewDto(Integer r_seqno, Integer r_useqnoFk, int r_bcode, String r_comment, int r_rec, int r_rate, String r_reg_date, BuyDto buyDto, CategoryDto categoryDto) {
        this.r_seqno = r_seqno;
        this.r_useqnoFk = r_useqnoFk;
        this.r_bcode = r_bcode;
        this.r_comment = r_comment;
        this.r_rec = r_rec;
        this.r_rate = r_rate;
        this.r_reg_date = r_reg_date;
        this.buyDto = buyDto;
        this.categoryDto = categoryDto;
    }

    public Integer getR_seqno() {
        return r_seqno;
    }

    public void setR_seqno(Integer r_seqno) {
        this.r_seqno = r_seqno;
    }

    public Integer getR_pseqnoFk() {
        return r_pseqnoFk;
    }

    public void setR_pseqnoFk(Integer r_pseqnoFk) {
        this.r_pseqnoFk = r_pseqnoFk;
    }

    public Integer getR_useqnoFk() {
        return r_useqnoFk;
    }

    public void setR_useqnoFk(Integer r_useqnoFk) {
        this.r_useqnoFk = r_useqnoFk;
    }

    public Integer getR_bcode() {
        return r_bcode;
    }

    public void setR_bcode(int r_bcode) {
        this.r_bcode = ReviewDto.this.r_bcode;
    }

    public String getR_comment() {
        return r_comment;
    }

    public void setR_comment(String r_comment) {
        this.r_comment = r_comment;
    }

    public int getR_rec() {
        return r_rec;
    }

    public void setR_rec(int r_rec) {
        this.r_rec = r_rec;
    }

    public int getR_rate() {
        return r_rate;
    }

    public void setR_rate(int r_rate) {
        this.r_rate = r_rate;
    }

    public String getR_reg_date() {
        return r_reg_date;
    }

    public void setR_reg_date(String r_reg_date) {
        this.r_reg_date = r_reg_date;
    }

    public BuyDto getBuyDto() {
        return buyDto;
    }

    public void setBuyDto(BuyDto buyDto) {
        this.buyDto = buyDto;
    }

    public CategoryDto getCategoryDto() {
        return categoryDto;
    }

    public void setCategoryDto(CategoryDto categoryDto) {
        this.categoryDto = categoryDto;
    }

    @Override
    public String toString() {
        return "ReviewDto{" +
                "r_seqno=" + r_seqno +
                ", r_pseqnoFk=" + r_pseqnoFk +
                ", r_useqnoFk=" + r_useqnoFk +
                ", r_bcode=" + r_bcode +
                ", r_comment='" + r_comment + '\'' +
                ", r_rec=" + r_rec +
                ", r_rate=" + r_rate +
                ", r_reg_date='" + r_reg_date + '\'' +
                ", buyDto=" + buyDto +
                ", categoryDto=" + categoryDto +
                '}';
    }
}
