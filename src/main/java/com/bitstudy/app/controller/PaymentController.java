package com.bitstudy.app.controller;

import com.bitstudy.app.dao.BuyDao;
import com.bitstudy.app.dao.CartDao;
import com.bitstudy.app.dao.ProductCountDao;
import com.bitstudy.app.dao.UserDao;
import com.bitstudy.app.domain.BuyDto;
import com.bitstudy.app.domain.CartDto;
import com.bitstudy.app.domain.ProductBuyDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class PaymentController {
    @Autowired
    BuyDao buyDao;
    @Autowired
    ProductCountDao productCountDao;
    @Autowired
    UserDao userDao;
    @Autowired
    CartDao cartDao;
    @RequestMapping ("/paymentFinish")
    public String finsh(BuyDto buyDto ,Integer p_seqnoFk,  Integer b_itemcount,  Integer ps_size, HttpServletRequest request, Model model){
        HttpSession session = request.getSession();
        String referer = request.getHeader("referer").toString();
        session.setAttribute("referer", referer);
        System.out.println("p_seqnoFk:"+p_seqnoFk);
        if(!loginChk(session)){
            return "redirect:/login";
        }

        String u_id =session.getAttribute("u_id").toString();
        int u_no = userDao.selectUser(u_id).getU_seqno();
        Integer u_seqno = userDao.selectUser(u_id).getU_seqno();
        buyDto = new BuyDto(0,p_seqnoFk,u_no,null, buyDto.getB_price(), buyDto.getB_rec(), buyDto.getB_phone(), buyDto.getB_zipcode() , buyDto.getB_addr(), buyDto.getB_addr_detail() , buyDto.getB_message() ,b_itemcount,buyDto.getB_buy(),buyDto.getB_code());
        System.out.println("buyDto:"+buyDto);

        List<CartDto>a = cartDao.selectCart(u_no);
        List<ProductBuyDto>pList = productCountDao.show(p_seqnoFk,ps_size);
        System.out.println(pList);
        int o_count = pList.get(0).getPs_count();
        System.out.println("o_count"+o_count);
        int f_count = o_count - b_itemcount;
        System.out.println("b_itemcount"+b_itemcount);
        System.out.println("f_count"+f_count);
        session.setAttribute("f_count", f_count);
        if (f_count <= 0) {
            return "redirect:" + referer;
        }
        ProductBuyDto productBuyDto = new ProductBuyDto(p_seqnoFk,ps_size,f_count);
        productCountDao.updateProduct(productBuyDto);
        System.out.println("이거 찍어"+buyDto);

        if (a.size()>1) {
            for (int i = 0; i < a.size(); i++) {
                System.out.println("arry1" + a.get(i).getC_seqno());
                cartDao.deleteCart(a.get(i).getC_seqno());
                System.out.println("arry2" + a.get(i).getP_seqnoFk());
                buyDao.insertBuy(buyDto);
            }
        }
        buyDao.insertBuy(buyDto);
        return "redirect:/";
    }
    private boolean loginChk(HttpSession session) {
        return session.getAttribute("u_id") != null;
        // 세션에 id가 있으면 결과는 true
        // 없으면 false 나옴
    }
//}

}
