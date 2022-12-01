package com.spring.miniproject.controller;

import com.spring.miniproject.domain.SearchOption;
import com.spring.miniproject.service.SaleListService;
import com.spring.miniproject.service.SearchOptionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SaleListController {

    @Autowired
    private SaleListService SalelistService;

    @Autowired
    private SearchOptionService searchOptionService;

    @RequestMapping("/sale/list")
    public String getList(SearchOption searchOption, Model model) {

        model.addAttribute("list", searchOptionService.getSearchList(searchOption));

        return "/sale/list";
    }

}
