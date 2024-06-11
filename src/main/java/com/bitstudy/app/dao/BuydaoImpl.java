package com.bitstudy.app.dao;

import com.bitstudy.app.domain.BuyDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class BuydaoImpl implements BuyDao {
    @Autowired
    SqlSession session;
    String namespace = "com.bitstudy.app.dao.BuyMapper.";
    @Override
    public int insertBuy(BuyDto buyDto) {
        return session.insert(namespace + "insertBuy", buyDto);
    }
    @Override
    public List<BuyDto> selectResult(Integer u_seqno){
        return  session.selectList(namespace + "selectResult",u_seqno);
    }
}
