package com.spring.miniproject.service;

import com.spring.miniproject.domain.Sale;
import com.spring.miniproject.mapper.SaleMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SaleReadService {

    @Autowired(required = false)
    private SaleMapper saleMapper;

    public Sale read(int pnumber){

        return saleMapper.saleRead(pnumber);
    }
}
