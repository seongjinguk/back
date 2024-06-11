package com.bitstudy.app.controller;

import com.bitstudy.app.dao.UserDao;
import com.bitstudy.app.domain.UserDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class UserUpdateController {
    @Autowired
    UserDao userDao;
    @GetMapping("/update")
    public String update(HttpServletRequest request, Model m ) {
        HttpSession session = request.getSession();
        if(!loginChk(session)) {
            session.setAttribute("prevPage", request.getServletPath());
            return "redirect:/login";
        }
        UserDto userDto = userDao.selectUser((String) session.getAttribute("u_id"));
        System.out.println(userDto);
        m.addAttribute("user", userDto);
        String a = userDto.getU_pw();
        m.addAttribute("u_pw", a);
        String b = userDto.getU_phone();
        m.addAttribute("u_phone", b);
        String c = userDto.getU_email();
        m.addAttribute("u_email", c);
        return "userUpdateForm";
    }
    private boolean loginChk(HttpSession session) {
        return session.getAttribute("u_id") != null;
    }
    @PostMapping ("updateResult")
    public String update(UserDto userDto){
        userDao.updateUser(userDto);
        return "redirect:/mypage";
    }
    @RequestMapping("/")
    public String delete(String u_id){
        userDao.deleteUser(u_id);
        return "redirect:/";
    }
}
