package com.bitstudy.app.dao;

import com.bitstudy.app.domain.NoticeDto;
import com.bitstudy.app.domain.Notice_searchDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
public class NoticeDaolmpl implements NoticeDao {

    @Autowired
    SqlSession session;

    String namespace = "com.bitstudy.app.dao.noticeMapper.";

    @Override
    public int count() {
        return session.selectOne(namespace + "count");
    }

    @Override
    public NoticeDto select(int faq_seqno) {
        return session.selectOne(namespace + "select", faq_seqno);
    }

    @Override
    public List<NoticeDto> selectAll() {
        return session.selectList(namespace + "selectAll");
    }

    @Override
    public List<NoticeDto> selectPage(Map map) {
        return session.selectList(namespace + "selectPage", map);
    }

    @Override
    public int deleteAll() {
        return session.delete(namespace + "deleteAll");
    }

    @Override
    public int delete(Integer faq_seqno, String faq_writer) {
        Map<String, Object> map = new HashMap<>();
        map.put("faq_seqno", faq_seqno);
        map.put("faq_writer", faq_writer);
        return session.delete(namespace + "delete", map);
    }

    @Override
    public int deleteForAdmin(Integer faq_seqno) {
        return 0;
    }

    @Override
    public int insert(NoticeDto dto) {
        return session.insert(namespace + "insert", dto);
    }

    @Override
    public int update(NoticeDto dto) {
        return session.update(namespace + "update", dto);
    }

    @Override
    public int update(Map<String, Object> map) {
        return 0;
    }

    @Override
    public int increaseViewCount(Integer faq_seqno) {
        return session.update(namespace + "increaseViewCount", faq_seqno);
    }

    @Override
    public List<NoticeDto> searchSelectPage(Notice_searchDto sc) {
        return session.selectList(namespace + "searchSelectPage", sc);
    }

    @Override
    public int searchSelectCount(Notice_searchDto sc) {
        System.out.println("dao에 sc :: " + sc);
        return session.selectOne(namespace + "searchSelectCount", sc);
    }
}
