package com.bitstudy.app.controller;

import com.bitstudy.app.domain.NoticeDto;
import com.bitstudy.app.domain.Notice_searchDto;
import com.bitstudy.app.domain.PageHandler;
import com.bitstudy.app.service.NoticeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class NoticeController {
    @Autowired
    NoticeService noticeService;

    @GetMapping("/notice/write")
    public String write(Model m) {
        m.addAttribute("mode", "new");
        return "write";
    }

    @PostMapping("/notice/write")
    public String write2(String faq_title,NoticeDto noticeDto, HttpSession session) {

        System.out.println("faq_title: " + faq_title);
        System.out.println("noticeDto: " + noticeDto);


        String currUserId = (String) session.getAttribute("u_id");
        System.out.println("noticeDto: " + noticeDto);
        noticeDto.setFaq_writer(currUserId);
        System.out.println("타이틀의 내용은 :::::    " + noticeDto.getFaq_title() + "  //  " + noticeDto.getFaq_title().isEmpty() + " // " + noticeDto.getFaq_title().trim().isEmpty());
        if(noticeDto.getFaq_title() == null){
            System.out.println("타이틀이 널이다.");
        }
        noticeService.write(noticeDto);

        return "redirect:/notice/list";
    }

    @RequestMapping("/notice/modify")
    public String modify(NoticeDto noticeDto, Integer page, Integer pageSize, Model m, HttpSession session) {
        String currUserId = (String) session.getAttribute("u_id");
        noticeDto.setFaq_writer(currUserId);
        noticeService.modify(noticeDto);
        return "redirect:/notice/list?page=" + page + "&pageSize=" + pageSize;
    }

    @RequestMapping("/notice/remove")
    public String remove(Integer faq_seqno, Integer page, Integer pageSize, HttpSession session) {
        String currUserId = (String) session.getAttribute("u_id");
        int rowCount = noticeService.remove(faq_seqno, currUserId);
        if (rowCount == 1) {
            System.out.println("삭제 성공");
        } else {
            System.out.println("삭제 실패");
        }
        return "redirect:/notice/list?page=" + page + "&pageSize=" + pageSize;
    }

    @GetMapping("/notice/read")
    public String read(Integer faq_seqno, Integer page, Integer pageSize, Model m) {
        NoticeDto noticeDto = noticeService.read(faq_seqno);
        if (noticeDto != null) {
            m.addAttribute("noticeDto", noticeDto);
            m.addAttribute("page", page);
            m.addAttribute("pageSize", pageSize);
            return "write";
        }
        return "";
    }

    @GetMapping(value = {"/notice/list", "/notice/search"})
    public String search(Notice_searchDto sc, Model m, HttpServletRequest request) {
        HttpSession session = request.getSession();
        if (!loginChk(session)) {
            session.setAttribute("prevPage", request.getServletPath());
            return "redirect:/login";
        }
        try {
            Integer page = sc.getPage();
            Integer pageSize = sc.getPageSize();
            System.out.println("page 확인");
            if (page == null) {
                page = 1;
                sc.setPage(1);
            }
            if (pageSize == null) {
                pageSize = 6;
                sc.setPageSize(6);
            }

            int totalCount;
            List<NoticeDto> list;

            if (sc.getKeyword() == null || sc.getKeyword().isEmpty()) {
                totalCount = noticeService.getCount();
                PageHandler pageHandler = new PageHandler(totalCount, page, pageSize);
                Map<String, Object> map = new HashMap<>();
                map.put("offset", (page - 1) * pageSize);
                map.put("pageSize", pageSize);
                list = noticeService.getPage(map);
                m.addAttribute("ph", pageHandler);
            } else {
                totalCount = noticeService.getSearchResultCount(sc);
                PageHandler pageHandler = new PageHandler(totalCount, page, pageSize);
                int offset = (sc.getPage() - 1) * sc.getPageSize();
                sc.setOffset(offset);
                list = noticeService.getSearchResultPage(sc);
                m.addAttribute("ph", pageHandler);
            }
            m.addAttribute("list", list);
            System.out.println("list: " + list);
            return "board";
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    private boolean loginChk(HttpSession session) {
        return session.getAttribute("u_id") != null;
    }
}
