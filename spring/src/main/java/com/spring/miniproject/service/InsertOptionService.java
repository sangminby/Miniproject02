package com.spring.miniproject.service;

import com.spring.miniproject.domain.Sale;
import com.spring.miniproject.mapper.SaleMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class InsertOptionService {

    @Autowired(required = false)
    private SaleMapper saleMapper;


    public List<Sale> getInsertOne(Sale sale) {

        return saleMapper.categoryOne(sale);
    }

    public List<Sale> getInsertTwo(Sale sale) {

        return saleMapper.categoryTwo(sale);
    }

    public List<Sale> getInsertThree(Sale sale) {

        return saleMapper.categoryThree(sale);
    }

}
