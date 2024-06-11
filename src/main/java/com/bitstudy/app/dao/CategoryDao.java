package com.bitstudy.app.dao;

import com.bitstudy.app.domain.CategoryDto;

import java.util.List;
import java.util.Map;

public interface CategoryDao {
    CategoryDto selectByName(String p_name);
    CategoryDto selectSeqno(String p_name);
    CategoryDto select(int p_seqno);

    CategoryDto selectByPrice(String p_price);
    public int updateCommentCount(Integer p_seqno,int count);



    int count();

    List<CategoryDto> selectAll();

    List<CategoryDto> selectPage(Map map);
}
