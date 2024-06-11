package com.bitstudy.app.dao;

import com.bitstudy.app.domain.ProductBuyDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
public class ProductCountDaoImpl implements ProductCountDao {
    @Autowired
    SqlSession session;
    String namespace = "com.bitstudy.app.dao.ProductBuyMapper.";
    @Override
    public List<ProductBuyDto> show(int p_seqno, int ps_size){
        Map map = new HashMap();
        map.put("p_seqno", p_seqno);
        map.put("ps_size", ps_size);
            return session.selectList(namespace+"selectlist", map);
        }
    @Override
    public List<ProductBuyDto> size(int p_seqno){
        return session.selectList(namespace+"selectPsizelist", p_seqno);
    }
    @Override
    public ProductBuyDto count(int p_size){
        return session.selectOne(namespace+"selectPcount", p_size);
    }
    @Override
    public int updateProduct(ProductBuyDto productBuyDto){


        return session.update(namespace+"updateProduct", productBuyDto);
    }
    }
