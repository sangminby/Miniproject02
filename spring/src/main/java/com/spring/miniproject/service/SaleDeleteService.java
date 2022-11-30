package com.spring.miniproject.service;

import com.spring.miniproject.mapper.SaleMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SaleDeleteService {

    @Autowired(required = false)
    private SaleMapper saleMapper;

    public int delete(int pnumber){

        return saleMapper.saleDelete(pnumber);
    }
}
