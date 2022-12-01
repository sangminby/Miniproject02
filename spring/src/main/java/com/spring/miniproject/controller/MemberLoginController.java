package com.spring.miniproject.controller;

import com.spring.miniproject.domain.ShopMember;
import com.spring.miniproject.service.MemberLoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/login")
public class MemberLoginController {

    @Autowired
    private MemberLoginService loginService;

    @GetMapping
    public String loginForm() {
        return "/member/login";
    }

    @PostMapping
    public String loginMember(@RequestParam("uid") String uid, @RequestParam("pw") String pw, HttpServletRequest request) throws Exception {

        ShopMember member = loginService.login(uid, pw);

        if (member != null) {

            HttpSession session = request.getSession();
            session.setAttribute("loginInfo", member.toLogin());

        }

        return "redirect:/index";
    }

}