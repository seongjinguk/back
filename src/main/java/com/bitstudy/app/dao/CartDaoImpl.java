package com.bitstudy.app.dao;

import com.bitstudy.app.domain.CartDto;
import com.bitstudy.app.domain.CategoryDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CartDaoImpl implements CartDao {
    @Autowired
    SqlSession session;
    String namespace="com.bitstudy.app.dao.CartMapper.";
    @Override
    public int insertCart(CartDto cartDto) {
        return session.insert(namespace+"cartInsert", cartDto);
    }
    @Override
    public List<CartDto> selectCart(int u_seqno){
        return session.selectList(namespace+"cartShow",u_seqno);
    }
    @Override
    public CategoryDto selectItem(int p_seqno){
        return session.selectOne(namespace+"cartItem",p_seqno);
    }
    @Override
    public int deleteCart(int c_seqno){
        return session.delete(namespace+"deleteCart",c_seqno);
    }
//    @Override
//    public int updateCart(List cd){
//        return  session.update(namespace+"updateCart",cd);
//    }
}
// ,List       Map map = new HashMap<>();
//        map.put("c_count",c_count);
//        map.put("c_seqno",c_seqno);c_seqno