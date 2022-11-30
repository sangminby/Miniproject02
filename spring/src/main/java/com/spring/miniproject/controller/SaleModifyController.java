package com.spring.miniproject.controller;

import com.spring.miniproject.domain.Sale;
import com.spring.miniproject.service.SaleModifyService;
import com.spring.miniproject.service.SaleReadService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.time.LocalDate;

@Controller
@RequestMapping("/sale/modify")
public class SaleModifyController {

    @Autowired
    private SaleModifyService saleModifyService;

    @Autowired
    private SaleReadService saleReadService;


    @GetMapping
    public String getModify(Model model, @RequestParam("pnumber") int pnumber) {

        model.addAttribute("sale", saleReadService.read(pnumber));

        return "/sale/modify";
    }


    @PostMapping
    public String modify(Sale sale) {

        saleModifyService.edit(sale);

        return "redirect:/sale/list";
    }



}