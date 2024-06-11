package com.bitstudy.app.controller;

import com.bitstudy.app.dao.*;
import com.bitstudy.app.domain.*;
import com.bitstudy.app.service.CategoryService;
import com.bitstudy.app.service.ReviewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.lang.reflect.Type;
import java.text.NumberFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

@Controller
public class CategoryController {

    @Autowired
    private CategoryService categoryService;
    @Autowired
    ProductCountDao productCountDao;
    @Autowired
    CategoryDao categoryDao;
    @Autowired
    UserDao userDao;
    @Autowired
    CartDao cartDao;
    @Autowired
    BuyDao buyDao;
    @Autowired
    ReviewDao reviewDao;
    @Autowired
    ReviewService reviewService;

    @GetMapping("/category")
    public String list(Integer page, Integer pageSize, Model m, HttpServletRequest request) {

        try {
            if(page == null) page=1;
            if(pageSize == null) pageSize=64;

            // 총 게시글 수 구하기 (???개)
            int totalCount = categoryService.getCount();

            // 페이징 계산
            PageHandler pageHandler = new PageHandler(totalCount, page, pageSize);


            // (몇번째 글부터 몇번째 글까지 가져올지 결정)
            Map map = new HashMap();
            map.put("offset", (page - 1) * pageSize);
            map.put("pageSize", pageSize);

            // 이렇게 하면 글 10개 가져옴
            List<CategoryDto> list = categoryService.getPage(map);

            m.addAttribute("list", list);
            m.addAttribute("ph",pageHandler);

            return "category";
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
    @GetMapping("/categoryM")
  public String cateM() {
     return "categoryM"   ;
    }



    @GetMapping("/product/read")
    public String read(@RequestParam(required = false) Integer p_seqno,
                       @RequestParam(required = false) Integer page,
                       @RequestParam(required = false) Integer pageSize,
                       @RequestParam(required = false) String p_name,
                       @RequestParam(required = false) String p_price,
                       Model m, HttpServletRequest request) {
        CategoryDto categoryDto = categoryService.read(p_seqno);
        List<ProductBuyDto>size = productCountDao.size(categoryDto.getP_seqno());
        HttpSession session = request.getSession();
        String u_id = (String) session.getAttribute("u_id");
        m.addAttribute("u_id", u_id);
        m.addAttribute("p_no",size.get(0).getP_seqnoFk());
        session.setAttribute("p_seqno",p_seqno);
        session.setAttribute("prevPage", request.getServletPath());

System.out.println("여기보세요" + categoryDto.getP_name());
        if (categoryDto.getP_name() != null) {
            m.addAttribute("categoryDto", categoryDto);
            m.addAttribute("page", page);
            m.addAttribute("pageSize", pageSize);
            m.addAttribute("size", size);

    System.out.println("model: " + m);
            return "product";
        }
        else {
            return "redirect:/error";  // 적절한 에러 페이지로 리다이렉트
        }
    }


    @GetMapping("/category/filter")
    @ResponseBody
    public List<Category_filterDto> getProductsByMultipleConditions(
            @RequestParam(required = false) List<String> colors,
            @RequestParam(required = false) Integer minPrice,
            @RequestParam(required = false) Integer maxPrice,
            @RequestParam(required = false) String sizeCount,
            @RequestParam(required = false) String gender,
            @RequestParam(required = false) String orderBy,
            @RequestParam(required = false) String p_date,
            @RequestParam(required = false) String p_pop) {

        try {
            if (gender == null || gender.isEmpty()) {
                gender = "female"; // 기본값 설정
            }

            List<Category_filterDto> results = categoryService.getProductsByMultipleConditions(colors, minPrice, maxPrice, sizeCount,p_date,p_pop,gender,orderBy);

            System.out.println("results: " + results);
            return results;
        } catch (Exception e) {
            System.out.println("필터 에러 발생");
            e.printStackTrace();
            throw new RuntimeException(e);
        }
    }
}


