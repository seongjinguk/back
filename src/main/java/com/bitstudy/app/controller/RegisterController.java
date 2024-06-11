package com.bitstudy.app.controller;

import com.bitstudy.app.dao.UserDao;
import com.bitstudy.app.domain.UserDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.Mapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.net.URLEncoder;
@Controller
public class RegisterController {
@Autowired
    UserDao userDao;
        @GetMapping("/register/join")
        public String loginForm() {
            return "registerForm";
        }
        @PostMapping("/register/save")
        public String save(UserDto userDto) throws Exception {

            if(userDao.selectUser(userDto.getU_id()) != null) {
                String msg = URLEncoder.encode("이미 사용중인 아이디 입니다..", "UTF-8");
                return "redirect:/register/join?msg="+msg;
            }

            userDao.insertUser(userDto);
            return "redirect:/login";
        }
    }

