package com.spring.miniproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/logout")
public class MemberLogoutController {


    public String logout(HttpSession httpSession){

        httpSession.invalidate();

        return "redirect:/index";

    }

}
