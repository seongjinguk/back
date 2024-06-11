package com.bitstudy.app.dao;

import com.bitstudy.app.domain.UserDto;

import java.sql.SQLException;

public interface UserDao {
    void deleteAll() throws SQLException;


    int insertUser(UserDto userDto);


    UserDto selectUser(String u_id);


    int updateUser(UserDto userDto);


    int deleteUser(String u_id);
}
