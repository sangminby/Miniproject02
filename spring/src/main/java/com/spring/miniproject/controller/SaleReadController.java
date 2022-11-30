package com.spring.miniproject.controller;

import com.spring.miniproject.service.SaleReadService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SaleReadController {

    @Autowired
    private SaleReadService readService;

    @GetMapping("/sale/read")
    public void readProduct(Model model, int pnumber){

        model.addAttribute("product",readService.read(pnumber));

    }

}
