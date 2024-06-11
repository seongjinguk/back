package com.bitstudy.app.domain;

import org.springframework.web.util.UriComponentsBuilder;

public class Notice_searchDto {

    private Integer page = 1;
    private Integer pageSize = 6;
    private String keyword = "";
    private String option = "";
    private Integer offset = 0;
    private String faq_title;
    private String faq_writer;
    private String faq_content;

    public Notice_searchDto() {}

    public Notice_searchDto(Integer page, Integer pageSize, String keyword, String option) {
        this.page = page;
        this.pageSize = pageSize;
        this.keyword = keyword;
        this.option = option;
    }

    public String getQueryString() {
        return getQueryString(page);
    }

    public String getQueryString(Integer page) {
        return UriComponentsBuilder.newInstance()
                .queryParam("page", page)
                .queryParam("pageSize", pageSize)
                .queryParam("keyword", keyword)
                .queryParam("option", option)
                .build().toString();

    }

    public String getKeyword() {
        return keyword;
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword;
    }

    public String getOption() {
        return option;
    }

    public void setOption(String option) {
        this.option = option;
    }

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

    public Integer getOffset() {
        return offset;
    }

    public void setOffset(Integer offset) {
        this.offset = offset;
    }

    @Override
    public String toString() {
        return "Notice_searchDto{" +
                "offset=" + offset +
                ", keyword='" + keyword + '\'' +
                ", pageSize=" + pageSize +
                ", page=" + page +
                ", option='" + option + '\'' +
                '}';

    }
}
