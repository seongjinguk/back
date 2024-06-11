package com.bitstudy.app.dao;

import com.bitstudy.app.domain.UserAddrDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public class AddrDaoImpl implements AddrDao {
    @Autowired
    SqlSession session;
    String namespace = "com.bitstudy.app.dao.AddrMapper.";

    /***************** INSERT *****************/
    @Override
    public int insertAddr(UserAddrDto userAddrDto) {
        return session.insert(namespace + "insertAddr", userAddrDto);
    }
    @Override
    public List<UserAddrDto> selectAddr(int u_seqno) {
        return session.selectList(namespace+"selectAddr", u_seqno);
    }
    @Override
    public UserAddrDto select(int u_seqnoFk) {
        return session.selectOne(namespace+"select", u_seqnoFk);
    }

}


