package com.spring.miniproject.controller;

import com.spring.miniproject.domain.ShopMember;
import com.spring.miniproject.service.MemberRegService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/member/register")
public class MemeberRegController {

    @Autowired
    private MemberRegService memberRegService;

    @GetMapping
    public String getMember() {

        return "/member/register";
    }


    @PostMapping
    public String regMember(ShopMember shopMember) {

        memberRegService.memberReg(shopMember);

        return "/index.jsp";
    }

}
