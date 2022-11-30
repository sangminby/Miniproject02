package com.spring.miniproject.controller;

import com.spring.miniproject.domain.SaleSaveReq;
import com.spring.miniproject.service.SaleSaveService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/sale/save")
public class SaleSaveController {

    @Autowired
    private SaleSaveService saleSaveService;

    @GetMapping
    public String saveForm(){

        return "sale/save";
    }

    @PostMapping
    public String saveProduct(SaleSaveReq saveReq, HttpServletRequest request){

        saleSaveService.save(saveReq, request);

        return "redirect:/sale/list";
    }


}
