//p
package com.bitstudy.app.controller;

import com.bitstudy.app.dao.AddrDao;
import com.bitstudy.app.dao.UserDao;
import com.bitstudy.app.domain.UserAddrDto;
import com.bitstudy.app.domain.UserDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class AddrController {
    @Autowired
    AddrDao addrDao;
    @Autowired
    UserDao userDao;

    @GetMapping("/addrPop")
    public String addrPop() {
        return "addr_pop";
    }
    @GetMapping("/addr")
    public String addr(HttpServletRequest request, Model model) {
        HttpSession session = request.getSession();
        session.getAttribute("u_id");
        UserDto userDto = userDao.selectUser((String) session.getAttribute("u_id"));
        int u_seqno = userDto.getU_seqno();
        session.setAttribute("u_seqno",u_seqno);
        session = request.getSession();
        System.out.println(session.getAttribute("u_id"));
        session.getAttribute("u_id");
        System.out.println(userDto);
        System.out.println(userDto.getU_seqno());
        List<UserAddrDto> user = addrDao.selectAddr(u_seqno);
        System.out.println(user.get(0));
        model.addAttribute("user", user);
        return "addr";
    }
    @PostMapping("/addrResults")
    public String please(UserAddrDto userAddrDto, HttpServletRequest request, Model model) {
        addrDao.insertAddr(userAddrDto);
        HttpSession session = request.getSession();
        session.getAttribute("u_id");
        UserDto userDto = userDao.selectUser((String) session.getAttribute("u_id"));
        int u_seqno = userDto.getU_seqno();
        session.setAttribute("u_seqno",u_seqno);
        session = request.getSession();
        System.out.println(session.getAttribute("u_id"));
        session.getAttribute("u_id");
        System.out.println(userDto);
        System.out.println(userDto.getU_seqno());
        List<UserAddrDto> user = addrDao.selectAddr(u_seqno);
        System.out.println(user.get(0));
        model.addAttribute("user", user);
        return "/addr";
    }
    }