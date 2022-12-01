package com.spring.miniproject.domain;

import lombok.*;
import org.springframework.web.multipart.MultipartFile;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
@Builder
public class SaleSaveReq {

    private int category;
    private String pname;
    private int price;
    private MultipartFile image;


    public Sale toSale(){
        Sale sale = Sale.builder()
                .category(this.category)
                .pname(this.pname)
                .price(this.price)
                .build();
        return sale;
    }

}

