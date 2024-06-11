package com.bitstudy.app.dao;

import com.bitstudy.app.domain.CategoryDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Repository
public class CategoryDaolmpl implements CategoryDao {
    @Autowired
    SqlSession session;
    String namespace="com.bitstudy.app.dao.CategoryDao.";
//                      com.bitstudy.app.dao.CategoryDao

    @Override
    public CategoryDto selectByName(String p_name) {
        return session.selectOne(namespace + "selectByName", p_name);
    }
    @Override
    public CategoryDto select(int p_seqno){
        return session.selectOne(namespace+"select", p_seqno);
    }
    @Override
    public CategoryDto selectSeqno(String p_name){
        return session.selectOne(namespace+"select", p_name);
    }
    @Override
    public CategoryDto selectByPrice(String p_price) {
        return session.selectOne(namespace + "selectByPrice", p_price);
    }

    @Override
    public int updateCommentCount(Integer p_seqno,int count) {
        Map map = new HashMap();
        map.put("bno",p_seqno);
        map.put("count",count);

        return session.update(namespace+"updateCommentCount",map);
    }


    @Override
    public int count() {
        return session.selectOne(namespace+"count");
    }

    @Override
    public List<CategoryDto> selectAll() {
        return session.selectList(namespace+"selectAll");
    }

    @Override
    public List<CategoryDto> selectPage(Map map) {
        return session.selectList(namespace+"selectPage", map);
    }

}










