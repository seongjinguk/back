package com.bitstudy.app.dao;

import com.bitstudy.app.domain.ReviewDto;

import java.util.List;

public interface ReviewDao {
    int deleteAll();

    int delete(Integer r_seqno, Integer u_seqnoFk);

    int count(Integer p_seqno);

    List<ReviewDto> selectAll(Integer p_seqno);

    int insert(ReviewDto reviewDto);

    int update(ReviewDto reviewDto);
     int selectPno(int r_bcode);
}
