package com.bitstudy.app.dao;

import com.bitstudy.app.domain.CartDto;
import com.bitstudy.app.domain.CategoryDto;

import java.util.List;

public interface CartDao {
    int insertCart(CartDto cartDto);
    List<CartDto>selectCart(int u_seqno);
    public CategoryDto selectItem(int p_seqno);
    int deleteCart(int c_seqno);
//    int updateCart(List cd);
}
