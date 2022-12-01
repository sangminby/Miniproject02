package com.spring.miniproject.domain;

import lombok.*;
import org.springframework.web.multipart.MultipartFile;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
@Builder
public class Sale {

    private int pnumber;
    private int category;
    private String pname;
    private int price;
    private String image;

}
