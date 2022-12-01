package com.spring.miniproject.service;

import com.spring.miniproject.domain.Sale;
import com.spring.miniproject.mapper.SaleMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.List;

@Service
public class SaleListService {

    @Autowired(required = false)
    private SaleMapper saleMapper;


    public List<Sale> getSaleList() {

        return saleMapper.saleList();
    }


}
