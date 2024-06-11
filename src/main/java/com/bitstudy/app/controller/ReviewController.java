package com.bitstudy.app.controller;

import com.bitstudy.app.dao.*;
import com.bitstudy.app.domain.*;
import com.bitstudy.app.service.CategoryService;
import com.bitstudy.app.service.ReviewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class ReviewController {
    @Autowired
    ReviewDao reviewDao;
    @Autowired
    UserDao userDao;
    @Autowired
    BuyDao buyDao;
    @Autowired
    CategoryDao categoryDao;
    @Autowired
    CategoryService categoryService;
    @Autowired
    ProductCountDao productCountDao;
    @Autowired
    ReviewService reviewService;

    @GetMapping("/review")
    @ResponseBody
    public ResponseEntity<List<ReviewDto>> list(Integer p_seqno, HttpServletRequest request, Model model) {
        // ResponseEntity: 응답이나 요청시 전송할 정보를 보낼 대상에 임의의 상태코드를 보낼수 있음
        try {
            HttpSession session = request.getSession();
            String u_id = (String) session.getAttribute("u_id");
            model.addAttribute("u_id", u_id);
            Integer u_seqno = userDao.selectUser(u_id).getU_seqno();
            model.addAttribute("u_seqno", u_seqno);
            List<BuyDto> b = buyDao.selectResult(u_seqno);
            Integer bs = b.get(0).getB_code();
            Integer bbs = reviewDao.selectPno(bs);
            model.addAttribute("bs", bbs);
            System.out.println("이거 찍어" + bbs);
            List<ReviewDto> list = reviewService.getList(bbs);
            return new ResponseEntity<List<ReviewDto>>(list, HttpStatus.OK);// 200

        } catch (Exception e) {
//            throw new RuntimeException(e);
            e.printStackTrace();
            return new ResponseEntity<List<ReviewDto>>(HttpStatus.BAD_REQUEST);// 400
        }
    }

    @PostMapping("/review")
//    @ResponseBody
    public ResponseEntity<String> write(@RequestBody ReviewDto reviewDto, Integer p_seqno, HttpServletRequest request) {
        try {
            HttpSession session = request.getSession();
            String u_id = (String) session.getAttribute("u_id");
            Integer u_seqno = userDao.selectUser(u_id).getU_seqno();
            reviewDto.setR_useqnoFk(u_seqno);
            reviewDto.setR_pseqnoFk(reviewDto.getR_pseqnoFk());

            if (reviewService.write(reviewDto) != 1) {
                throw new Exception("실패");
            }
            System.out.println("commentDto: " + reviewDto);

//            return new ResponseEntity<String> ("댓글 등록 성공", HttpStatus.OK); // 200

            HttpHeaders responseHeader = new HttpHeaders();
            responseHeader.add("content-type", "text/html; charset=UTF-8");

            return new ResponseEntity<String>("댓글 등록 성공", responseHeader, HttpStatus.OK);// 200

        } catch (Exception e) {
            e.printStackTrace();
            return new ResponseEntity<String>(HttpStatus.BAD_REQUEST);// 400
        }
    }

    /* 댓글 수정 - comment.jsp 에서 댓글 '등록' 누르고 온거 */
    @PatchMapping("/review/{r_seqno}")
    public ResponseEntity<String> modify(@PathVariable Integer cno, @RequestBody ReviewDto reviewDto, HttpSession session) {
        try {
            String commenter = (String) session.getAttribute("id");

//            reviewDto.setCommenter(commenter);
//            reviewDto.setCno(cno);

            if (reviewService.modify(reviewDto) != 1) {
                throw new Exception("실패");
            }
//            return new ResponseEntity<String> ("댓글 등록 성공", HttpStatus.OK);// 200

            HttpHeaders responseHeader = new HttpHeaders();
            responseHeader.add("content-type", "text/html; charset=UTF-8");

            return new ResponseEntity<String>("댓글 수정 성공", responseHeader, HttpStatus.OK);// 200

        } catch (Exception e) {
            e.printStackTrace();
            return new ResponseEntity<String>(HttpStatus.BAD_REQUEST);// 400
        }
    }


    /* 댓글 삭제 */
    @DeleteMapping("/review/{r_seqno}")
    public ResponseEntity<String> remove(@PathVariable Integer r_ceqno, ReviewDto reviewDto, HttpSession session) {
        try {
            String commenter = (String) session.getAttribute("id");
//            System.out.println(reviewDto.getBno()+", " + cno+","+commenter);
//            System.out.println("commentDto: " + commentDto);
            if (reviewService.remove(reviewDto.getBuyDto().getP_seqnoFk(), r_ceqno, reviewDto.getR_useqnoFk()) != 1) {
                throw new Exception("실패");
            }

//            return new ResponseEntity<String> ("댓글 등록 성공", HttpStatus.OK);// 200

            HttpHeaders responseHeader = new HttpHeaders();
            responseHeader.add("content-type", "text/html; charset=UTF-8");

            return new ResponseEntity<String>("댓글 삭제 성공", responseHeader, HttpStatus.OK);// 200

        } catch (Exception e) {
            e.printStackTrace();
            return new ResponseEntity<String>(HttpStatus.BAD_REQUEST);// 400
        }
    }


/*
    스프링에서 비동기 처리를 하는 경우  @ResponseBody, @RequestBody 는 필수
    비동기 통신시 서버로 요청을 할때 본문(body)에 담아서 보내고, 서버에서 받을때도 본문에 데이터를 받아서 보낸다.
    사용자가 요청을 보낼때는 @RequestBody 를 매개변수에 달아주고
    해당 메서드의 리턴도 응답본문(ResponseBody) 에 담아서 보내야 하기 때문에 메서드 맨 위에 @ResponseBody 를 달아준다.

    @RequestBody 를 이용해서 문자열을 자바객체로 변환
    @ResponseBody 를 이용해서 자바객체를 문자열로 변환
 */


}
