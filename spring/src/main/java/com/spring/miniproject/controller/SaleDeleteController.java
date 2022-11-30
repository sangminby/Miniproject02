package com.spring.miniproject.controller;

import com.spring.miniproject.service.SaleDeleteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SaleDeleteController {

    @Autowired
    private SaleDeleteService deleteService;

    @GetMapping("/sale/delete")
    public String deleteSale(int pnumber){

        deleteService.delete(pnumber);

        return "redirect:/sale/list";

    }

}
