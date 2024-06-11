package com.bitstudy.app.dao;


import com.bitstudy.app.domain.UserAddrDto;

import java.util.List;
import java.util.Map;

public interface AddrDao {
    int insertAddr(UserAddrDto userAddrDto);
    List<UserAddrDto> selectAddr(int u_seqno);
    UserAddrDto select(int u_seqFk);


}
