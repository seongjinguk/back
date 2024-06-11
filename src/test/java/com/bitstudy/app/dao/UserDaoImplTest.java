package com.bitstudy.app.dao;

import com.bitstudy.app.domain.UserDto;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.sql.SQLException;

import static org.junit.Assert.*;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class UserDaoImplTest {
    @Autowired
    UserDaoImpl userDao;
    @Test
    public void insertUser() throws SQLException {
//        userDao.deleteUser("pjw970808");
        UserDto userDto = new UserDto(null,"1jw970808","1234","박지원","pjw970808@naver.com","970808","남자","01051890093",null,null,"normal");
        assertTrue(userDao.insertUser(userDto) == 1);

    }

    @Test
    public void selectUser() {
        userDao.deleteUser("pjw970808");
        UserDto userDto = new UserDto(null,"pjw970808","1234","박지원","pjw970808@naver.com","970808","남자","01051890093",null,null,null);
        userDao.insertUser(userDto);
        userDao.selectUser("pjw970808");


    }

    @Test
    public void updateUser() {
    }

    @Test
    public void deleteUser() {
    }
}