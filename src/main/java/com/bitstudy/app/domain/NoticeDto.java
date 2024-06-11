package com.bitstudy.app.domain;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class NoticeDto {
    private Integer faq_seqno;
    private String faq_title;
    private String faq_content;
    private String faq_writer;
    private int faq_viewcount;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date faq_date;

    public NoticeDto() {
        this("", "", "");
        System.out.println("sc Dto 1번");
    }


    public NoticeDto(String faq_title, String faq_content, String faq_writer) {

        System.out.println(2222);
        this.faq_title = faq_title;
        this.faq_content = faq_content;
        this.faq_writer = faq_writer;
    }


//    public NoticeDto(String title, String content, String writer) {
//        System.out.println(2222);
//        this.faq_title = title;
//        this.faq_content = content;
//        this.faq_writer = writer;
//    }



    public Integer getFaq_seqno() {
        return faq_seqno;
    }

    public void setFaq_seqno(Integer faq_seqno) {
        this.faq_seqno = faq_seqno;
    }

    public String getFaq_title() {
        return faq_title;
    }

    public void setFaq_title(String faq_title) {
        this.faq_title = faq_title;
    }

    public String getFaq_content() {
        return faq_content;
    }

    public void setFaq_content(String faq_content) {
        this.faq_content = faq_content;
    }

    public String getFaq_writer() {
        return faq_writer;
    }

    public void setFaq_writer(String faq_writer) {
        this.faq_writer = faq_writer;
    }

    public int getFaq_viewcount() {
        return faq_viewcount;
    }

    public void setFaq_viewcount(int faq_viewcount) {
        this.faq_viewcount = faq_viewcount;
    }

    public Date getFaq_date() {
        return faq_date;
    }

    public void setFaq_date(Date faq_date) {
        this.faq_date = faq_date;
    }

    @Override
    public String toString() {
        return "NoticeDto{" +
                "faq_seqno=" + faq_seqno +
                ", faq_title='" + faq_title + '\'' +
                ", faq_content='" + faq_content + '\'' +
                ", faq_writer='" + faq_writer + '\'' +
                ", faq_viewcount=" + faq_viewcount +
                ", faq_date=" + faq_date +
                '}';
    }
}
