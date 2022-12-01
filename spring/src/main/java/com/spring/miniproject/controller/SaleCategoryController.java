package com.spring.miniproject.controller;

import com.spring.miniproject.service.SaleListService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SaleCategoryController {

    @Autowired
    private SaleListService listService;

    @RequestMapping("sale/tlist")
    public void getTlist(Model model){

       model.addAttribute("tlist",listService.getTopList());

    }
}
