package com.bitstudy.app.dao;

import com.bitstudy.app.domain.Category_filterDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;


@Repository
public class Category_filterDaoImpl implements Category_filterDao {
    @Autowired
    SqlSession session;
    String namespace = "com.bitstudy.app.dao.Category_filterDao.";

    @Override
    public List<Category_filterDto> selectProductsByMultiple(Map map) {

        System.out.println("다오 map: " + map);
        return session.selectList(namespace+"selectProductsByMultiple",map);
    }
}
