package com.bitstudy.app.dao;

import com.bitstudy.app.domain.NoticeDto;
import com.bitstudy.app.domain.Notice_searchDto;

import java.util.List;
import java.util.Map;

public interface NoticeDao {
    int count();
    NoticeDto select(int faq_seqno);
    List<NoticeDto> selectAll();
    List<NoticeDto> selectPage(Map<String, Object> map);
    int deleteAll();
    int delete(Integer faq_seqno, String faq_writer);
    int deleteForAdmin(Integer faq_seqno);
    int insert(NoticeDto dto);
    int update(NoticeDto dto);
    int update(Map<String, Object> map);
    int increaseViewCount(Integer faq_seqno);
    List<NoticeDto> searchSelectPage(Notice_searchDto sc);
    int searchSelectCount(Notice_searchDto sc);
}
