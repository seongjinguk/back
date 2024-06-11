package com.bitstudy.app.dao;

import com.bitstudy.app.domain.BuyDto;

import java.util.List;

public interface BuyDao {
    int insertBuy(BuyDto buyDto);
    List<BuyDto> selectResult(Integer u_seqno);
}
