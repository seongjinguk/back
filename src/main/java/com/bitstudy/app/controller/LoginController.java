package com.bitstudy.app.controller;


import com.bitstudy.app.dao.UserDao;
import com.bitstudy.app.domain.UserDto;
import com.bitstudy.app.domain.UserLoginDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.net.URLEncoder;

/**
 * 할일: userDao 이용해서 실제 DB에 있는 id, pw 로 로그인 해보기 *
 */

@Controller
public class LoginController {

    @Autowired
    UserDao userDao;
    @GetMapping("/login")
    public String loginForm() {
        return "loginForm";
    }
    @GetMapping("/loginout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/";
    }
    @PostMapping("/login")
    public String login(UserLoginDto userLoginDto, HttpServletRequest request, HttpServletResponse response) throws Exception {
        String id = userLoginDto.getU_id();
        String pw = userLoginDto.getU_pw();
        UserDto name;
        boolean rememberId = userLoginDto.isU_rid();
        if(!loginChk(id, pw)) {
            String msg = URLEncoder.encode("일치하는 회원정보가 없습니다.", "UTF-8");
            return "redirect:/login?msg="+msg;
        }
        Cookie cookie = new Cookie("u_id", id);
        if(!rememberId) {
            cookie.setMaxAge(0);
        }
        response.addCookie(cookie);
        HttpSession session = request.getSession();
        session.setAttribute("u_id", id);
        String prevPage = String.valueOf(session.getAttribute("prevPage"));

        System.out.println(prevPage);
        if(prevPage.matches("/payment")) {
            String referer = session.getAttribute("referer").toString();
            System.out.println("add"+ referer);
            return "redirect:"+referer;
        }
        if(prevPage.matches("/product/read")) {
            String referer = session.getAttribute("referer").toString();
            System.out.println("add"+ referer);
            return "redirect:"+referer;
        }
        return "redirect:"+(("null".equals(prevPage))?"/":prevPage);
    }
    private boolean loginChk(String id, String pw) {
        UserDto userDto = userDao.selectUser(id);
        System.out.println(userDto);
        if(userDto == null) return false;
        return userDto.getU_pw().equals(pw);
    }
}
