package com.bitstudy.app.dao;

import com.bitstudy.app.domain.ReviewDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.bitstudy.app.domain.ReviewDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.HashMap;
import java.util.List;
import java.util.Map;



    /** 할일: commentMapper.xml 에 있는 sql문들 호출하는 메서드들 만들기 */

    @Repository
    public class ReviewDaoImpl implements ReviewDao {
        @Autowired
        SqlSession session;

        String namespace="com.bitstudy.app.dao.ReviewMapper.";


        @Override
        public int deleteAll() {
            return session.delete(namespace+"deleteAll");
        }


        @Override
        public int delete(Integer r_seqno, Integer r_useqnoFk) {

            Map map = new HashMap();
            map.put("r_seqno",r_seqno);
            map.put("u_seqnoFk",r_useqnoFk);

            return session.delete(namespace+"delete", map);
        }


        @Override
        public int count(Integer p_seqno) {
            return session.selectOne(namespace+"count", p_seqno);
        }


        @Override
        public List<ReviewDto> selectAll(Integer p_seqno) {
            return session.selectList(namespace+"selectAll", p_seqno);
        }
        @Override
        public int selectPno(int r_bcode) {
            return session.selectOne(namespace+"p_seqno", r_bcode);
        }


        @Override
        public int insert(ReviewDto reviewDto) {

            return session.insert(namespace+"insert", reviewDto);
        }

        @Override
        public int update(ReviewDto reviewDto) {
            return session.update(namespace+"update", reviewDto);
        }


    }
