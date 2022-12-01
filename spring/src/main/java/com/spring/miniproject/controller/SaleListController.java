package com.spring.miniproject.controller;

import com.spring.miniproject.domain.Sale;
import com.spring.miniproject.domain.SearchOption;
import com.spring.miniproject.service.InsertOptionService;
import com.spring.miniproject.service.SaleListService;
import com.spring.miniproject.service.SearchOptionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SaleListController {

    @Autowired
    private SaleListService saleListService;

    @Autowired
    private SearchOptionService searchOptionService;

    @Autowired
    private InsertOptionService insertOptionService;

    @RequestMapping("/sale/list")
    public String allList(Model model){

        model.addAttribute("list", saleListService.getSaleList());

        return "/sale/list";
    }
/*

    @RequestMapping
    public String getList(SearchOption searchOption, Model model) {

        model.addAttribute("list", searchOptionService.getSearchList(searchOption));

        return "/sale/list";
    }
*/

    @RequestMapping("/sale/list1")
    public String getOne(Sale sale, Model model) {

        model.addAttribute("list", insertOptionService.getInsertOne(sale));

        return "/sale/list1";
    }

    @RequestMapping("/sale/list2")
    public String getTwo(Sale sale, Model model) {

        model.addAttribute("list", insertOptionService.getInsertTwo(sale));

        return "/sale/list2";
    }

    @RequestMapping("/sale/list3")
    public String getThree(Sale sale, Model model) {

        model.addAttribute("list", insertOptionService.getInsertThree(sale));

        return "/sale/list3";
    }

}
