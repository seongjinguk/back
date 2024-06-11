

package com.bitstudy.app.service;

import com.bitstudy.app.dao.CategoryDao;
import com.bitstudy.app.dao.ReviewDao;
import com.bitstudy.app.domain.ReviewDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class ReviewService  {
//    @Autowired
//    Ex10_BoardDao_검색용 boardDao;

    @Autowired
    ReviewDao reviewDao;
@Autowired
    CategoryDao categoryDao;

//     댓글 수 증감
    @Transactional(rollbackFor = Exception.class)
    public int remove(Integer p_seqnoFk, Integer r_seqno, Integer r_useqnoFk) {
        categoryDao.updateCommentCount(p_seqnoFk, -1);
        return reviewDao.delete(r_seqno,  r_useqnoFk);
    }


    @Transactional(rollbackFor = Exception.class)
    public int write(ReviewDto reviewDto) {
        categoryDao.updateCommentCount(reviewDto.getR_pseqnoFk(), 1);
        return reviewDao.insert(reviewDto);
    }
//
//     댓글 리스트 불러오기

    public List<ReviewDto> getList(Integer p_seqno) {
        return reviewDao.selectAll(p_seqno);
    }

    // 댓글 수정

    public int modify(ReviewDto reviewDto) {
        return reviewDao.update(reviewDto);
    }


}