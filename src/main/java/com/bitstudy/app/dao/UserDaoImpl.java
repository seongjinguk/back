package com.bitstudy.app.dao;

import com.bitstudy.app.domain.UserDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.sql.SQLException;

@Repository
public class UserDaoImpl implements UserDao {
    @Autowired
    SqlSession session;
    String namespace="com.bitstudy.app.dao.UserMapper.";
    @Override
    public void deleteAll() throws SQLException {

    }
    /***************** INSERT *****************/
    @Override
    public int insertUser(UserDto userDto) {
        return session.insert(namespace+"insertUser", userDto);
    }
    /***************** SELECT *****************/
    @Override
    public UserDto selectUser(String u_id) {
        return session.selectOne(namespace+"selectUser", u_id);
    }
    /***************** UPDATE *****************/
    @Override
    public int updateUser(UserDto userDto) {
        return session.update(namespace+"updateUser", userDto);
    }
    /***************** DELETE *****************/
    @Override
    public int deleteUser(String u_id) {
        return session.delete(namespace+"deleteUser", u_id);
    }


}
