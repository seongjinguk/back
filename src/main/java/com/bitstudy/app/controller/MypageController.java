package com.bitstudy.app.controller;
import com.bitstudy.app.dao.BuyDao;
import com.bitstudy.app.dao.UserDao;
import com.bitstudy.app.domain.BuyDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class MypageController {
    @Autowired
    UserDao userDao;
    @Autowired
    BuyDao buyDao;
    @GetMapping("/mypage")
    public String mypage(HttpServletRequest request, Model model) {
        HttpSession session = request.getSession();
///로그인체크
        if(!loginChk(session)) {
            session.setAttribute("prevPage", request.getServletPath());
            return "redirect:/login";
        }
        String url = request.getHeader("referer");
        System.out.println(url);
        session.setAttribute("referer",url);
        //세션에서 id값 추출
        String id = (String) session.getAttribute("u_id");
        //유저정보 추출
        userDao.selectUser(id);
        //유저고유번호추출
        int u_seqno = userDao.selectUser(id).getU_seqno();
        //조인해서 각자테이블에서 필요한 정보 추출
        System.out.println(u_seqno);
        List<BuyDto>buyDtoList = buyDao.selectResult(u_seqno);
        System.out.println(buyDao.selectResult(u_seqno));
        //유효성 검사 주문내역이 없으면 그냥 마이페이지로
        if(buyDtoList.isEmpty()) {
            return "mypage";
        }
        //주문내역있으면 추출한정보를 모델에 담아서 보내줌
        model.addAttribute("buyDtoList", buyDtoList);
        System.out.println("buy"+":"+buyDtoList);
        return "mypage";
    }
    private boolean loginChk(HttpSession session) {
        return session.getAttribute("u_id") != null;
        // 세션에 id가 있으면 결과는 true
        // 없으면 false 나옴
    }

}




