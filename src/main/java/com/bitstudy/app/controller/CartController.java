package com.bitstudy.app.controller;

import com.bitstudy.app.dao.CartDao;
import com.bitstudy.app.dao.ProductCountDao;
import com.bitstudy.app.dao.UserDao;
import com.bitstudy.app.domain.CartDto;
import com.bitstudy.app.domain.ProductBuyDto;
import com.bitstudy.app.domain.UserDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.NumberFormat;
import java.util.List;
import java.util.Locale;

@Controller
public class CartController {
    @Autowired
    UserDao userDao;
    @Autowired
    CartDao cartDao;
    @Autowired
    ProductCountDao productCountDao;

    @RequestMapping("/cart")
    public String cart(Locale locale, int ps_size, int ps_count, ProductBuyDto productBuyDto, Model m, HttpServletRequest request){
        HttpSession session = request.getSession();
        if(!loginChk(session)) {
            String url = request.getHeader("referer");
            System.out.println(url);
            session.setAttribute("referer",url);
            return "redirect:/login";
        }
        //세션에서 아이디 추출
        Object u_id = session.getAttribute("u_id");
        String id = (String)u_id;
        //유저정보 추출
        UserDto userDto =userDao.selectUser(id);
        //유저고유번호추출
        int u_seqnoFk = userDto.getU_seqno();
        //유저고유번호 모델에 담기
        m.addAttribute("u_seqnoFk",u_seqnoFk);
        //현재페이지의 상품고유번호 추출
        Object p_seqno = session.getAttribute("p_seqno");
        int p_seqnoFk = (Integer) p_seqno;
        //현재보고있는 상품번호를 가지고 있으면서 내가 현재 페이지에서 누른 사이즈의 값 수량 추출
        List<ProductBuyDto>rlist = productCountDao.show(p_seqnoFk,ps_size);
        //현재 재품의 현재 사이즈의 남은 재고
        int o_count = rlist.get(0).getPs_count();
        //재고에서 내가 선택한 만큼의 수량을 뺀다
        int f_count = o_count-ps_count;
        //유효성검사 재고가 0보다 떨어지게되면 새로고침
        //상품의 번호 내가 고른 사이즈 재고의 수량을 업데이트한다 이때 제고는 넘어가면서 기존의 재고 뺴기 내가 고른 수량이 된다
        //상품번호와 사이즈를 통해 이름 가격을불러온다
        List<ProductBuyDto>flist = productCountDao.show(p_seqnoFk,ps_size);
        String p_name = flist.get(0).getCategoryDto().getP_name();
        Integer p_price = flist.get(0).getCategoryDto().getP_price();
        //다음페이지에 넘겨줄 값들을 다 모델에 저장한다
        m.addAttribute("p_name",p_name);
        m.addAttribute("ps_size",ps_size);
        m.addAttribute("ps_count",ps_count);
        //데이터에 저장되어있는 가격형식에서 ,를 제거

        //, 앞에자리만 숫자로 변환

        //넘겨줘야한는 가격을 구한다
        int f_price = ps_count*p_price;
        //다시 돈의 형태로 변환
        String formetmoney = NumberFormat.getInstance().format(f_price);
        //저장해서 보내기
        m.addAttribute("p_price",formetmoney);
        m.addAttribute("p_seqnoFk",p_seqnoFk);
        System.out.println("howmuch"+f_price);
        CartDto cartDto = new CartDto(null,p_seqnoFk,u_seqnoFk,ps_size, f_price,ps_count,null);
        cartDao.insertCart(cartDto);
        session.setAttribute("p_seqno",p_seqno);
        session.getAttribute("u_id");
        UserDto user =userDao.selectUser((String) session.getAttribute("u_id"));
        int u_seqno = user.getU_seqno();
        List<CartDto>c =cartDao.selectCart(u_seqno);
        m.addAttribute("c",c);
        return "cart";
    }
    @GetMapping("/cart")
    public String cart(HttpServletRequest request, Model m) {
        HttpSession session = request.getSession();
        if (!loginChk(session)) {
            session.setAttribute("prevPage", request.getServletPath());
            String referer = request.getHeader("referer").toString();
            session.setAttribute("referer", referer);
            return "redirect:/login";
        }
        session.getAttribute("u_id");
        UserDto user = userDao.selectUser((String) session.getAttribute("u_id"));
        int u_seqno = user.getU_seqno();
        List<CartDto> c = cartDao.selectCart(u_seqno);
        m.addAttribute("c", c);
        System.out.println("cart"+c.get(0).getC_seqno());
        int sum =0;
        for(int i =0; i<c.size(); i++){
            sum += c.get(i).getC_price();
        }
        String formetmoney = NumberFormat.getInstance().format(sum);
        System.out.println(formetmoney);
        m.addAttribute("sum",formetmoney);
        return "cart";
    }
    @RequestMapping( "/cart/remove")
    public String remove(int c_seqno){
        System.out.println("여고"+c_seqno);
    cartDao.deleteCart(c_seqno);
        return "redirect:/cart";
    }
    private boolean loginChk(HttpSession session) {
        return session.getAttribute("u_id") != null;
        // 세션에 id가 있으면 결과는 true
        // 없으면 false 나옴
    }
    @PostMapping ("/payment")
    public String payment(HttpServletRequest request, Model m,
                          @RequestParam List c_count,
                          @RequestParam List c_price,
                          @RequestParam List c_seqno
    ){
        HttpSession session = request.getSession();
        String url = request.getHeader("referer");
        session.setAttribute("url",url);
        session.getAttribute("u_id");
        UserDto user = userDao.selectUser((String) session.getAttribute("u_id"));
        int u_seqno = user.getU_seqno();
        List<CartDto> c = cartDao.selectCart(u_seqno);
        m.addAttribute("c", c);
        System.out.println(c.get(0).getP_seqnoFk());
        System.out.println(c.get(0).getU_seqnoFk());
        session.setAttribute("prevPage", request.getServletPath());
        List cno = c_seqno;
        m.addAttribute("cno", cno);

//        Map map = new HashMap<>();
//        map.put("a",a);
//        map.put("b",b);
        m.addAttribute("cd",c_count);
        m.addAttribute("cc",c_price);
        List cd = c_count;
        cd.get(0);
        System.out.println(cd);
//        cartChange.setC_count(c_count);
////        cartChange.setC_seqno(c_seqno);

//         cartDao.updateCart(cd);
//        System.out.println("dyrj"+asadf);
        return "payment";
    }

/*
    스프링에서 비동기 처리를 하는 경우  @ResponseBody, @RequestBody 는 필수
    비동기 통신시 서버로 요청을 할때 본문(body)에 담아서 보내고, 서버에서 받을때도 본문에 데이터를 받아서 보낸다.
    사용자가 요청을 보낼때는 @RequestBody 를 매개변수에 달아주고
    해당 메서드의 리턴도 응답본문(ResponseBody) 에 담아서 보내야 하기 때문에 메서드 맨 위에 @ResponseBody 를 달아준다.

    @RequestBody 를 이용해서 문자열을 자바객체로 변환
    @ResponseBody 를 이용해서 자바객체를 문자열로 변환
 */

//    @PostMapping("/send")
//    @ResponseBody
//    public Person send(@RequestBody Person p) {
//        System.out.println("p: " + p);
//        p.getId();
//        int id = Integer.parseInt(p.getId());
//
//        System.out.println(id);
//
//        return p;
//    }

}
