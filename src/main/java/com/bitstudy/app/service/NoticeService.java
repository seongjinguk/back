package com.bitstudy.app.service;

import com.bitstudy.app.dao.NoticeDao;
import com.bitstudy.app.domain.NoticeDto;
import com.bitstudy.app.domain.Notice_searchDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class NoticeService {

    @Autowired
    NoticeDao noticeDao;

    public int getCount() {
        return noticeDao.count();
    }

    public NoticeDto read(Integer faq_seqno) {
        NoticeDto dto = noticeDao.select(faq_seqno);
        noticeDao.increaseViewCount(faq_seqno);
        return dto;

    }

    public List<NoticeDto> getList() {
        return noticeDao.selectAll();
    }

    public List<NoticeDto> getPage(Map<String, Object> map) {
        return noticeDao.selectPage(map);
    }

    public int remove(Integer faq_seqno, String faq_writer) {
        return noticeDao.delete(faq_seqno, faq_writer);
    }

    public int write(NoticeDto dto) {
        return noticeDao.insert(dto);
    }

    public int modify(NoticeDto dto) {
        return noticeDao.update(dto);
    }




//    검색
    public int getSearchResultCount(Notice_searchDto searchDto) {
        return noticeDao.searchSelectCount(searchDto);
    }

    public List<NoticeDto> getSearchResultPage(Notice_searchDto searchDto) {
        return noticeDao.searchSelectPage(searchDto);
    }
}
