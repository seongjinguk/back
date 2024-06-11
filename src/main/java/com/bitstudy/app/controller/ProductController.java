package com.bitstudy.app.controller;

import com.bitstudy.app.dao.ProductCountDao;
import com.bitstudy.app.dao.UserDao;
import com.bitstudy.app.domain.ProductBuyDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class ProductController {
    @Autowired
    UserDao userDao;
    @Autowired
    ProductCountDao productCountDao;

    @GetMapping ("/payment")
    public String payment(@RequestParam int ps_size, @RequestParam int ps_count, Model m, HttpServletRequest request) {
        HttpSession session = request.getSession();
        Object p_seqno = session.getAttribute("p_seqno");
        int p_seqnoFk =  (Integer) p_seqno;//현재보고있는 상품번호를 가지고 있으면서 내가 현재 페이지에서 누른 사이즈의 값 수량 추출
        List<ProductBuyDto> rlist = productCountDao.show(p_seqnoFk, ps_size);//현재 재품의 현재 사이즈의 남은 재고
        int o_count = rlist.get(0).getPs_count();//재고에서 내가 선택한 만큼의 수량을 뺀다
        int f_count = o_count - ps_count;//유효성검사 재고가 0보다 떨어지게되면 새로고침
        if (ps_count <= 0) {
            String referer = request.getHeader("Referer");
            return "redirect:" + referer;
        }
        List<ProductBuyDto> flist = productCountDao.show(p_seqnoFk, ps_size);
        String p_name = flist.get(0).getCategoryDto().getP_name();
        Integer p_price = flist.get(0).getCategoryDto().getP_price();
        //다음페이지에 넘겨줄 값들을 다 모델에 저장한다
        m.addAttribute("p_name", p_name);
        m.addAttribute("ps_size", ps_size);
        m.addAttribute("ps_count", ps_count);
        int f_price = ps_count * p_price;
        m.addAttribute("p_price", f_price);
        m.addAttribute("p_seqnoFk", p_seqnoFk);
//        String referer = request.getHeader("referer").toString();
//        session.setAttribute("referer", referer);
        session.setAttribute("prevPage", request.getServletPath());
        return "payment";
    }
}