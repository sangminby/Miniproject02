package com.spring.miniproject.service;

import com.spring.miniproject.domain.Sale;
import com.spring.miniproject.domain.SaleSaveReq;
import com.spring.miniproject.mapper.SaleMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;

@Service
public class SaleSaveService {

    @Autowired(required = false)
    private SaleMapper saleMapper;

    public int save(SaleSaveReq saveReq, HttpServletRequest request){

        String newImg = null;

        if(saveReq.getImage() != null
                && !saveReq.getImage().isEmpty()
                && saveReq.getImage().getSize()>0){

            String dirURi = "/image";

            String dirRealpath = request.getSession().getServletContext().getRealPath(dirURi);

            newImg = System.currentTimeMillis() + saveReq.getImage().getOriginalFilename();

            try {
                saveReq.getImage().transferTo(new File(dirRealpath, newImg));
            } catch (IOException e) {
//                throw new RuntimeException(e);
            }

        }

        Sale sale = saveReq.toSale();

        if(newImg != null){
            sale.setImage(newImg);
        }


        return saleMapper.saleSave(sale);
    }

//    public int save(SaleSaveReq saleSaveReq) {
//
//        int result = 0;
//
//        try {
//
//            result = saleMapper.saleSave(saleSaveReq.toSale());
//
//        } catch (Exception e) {
//
//            e.printStackTrace();
//        }
//
//        return result;
//    }
}
