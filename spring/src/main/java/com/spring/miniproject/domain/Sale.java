package com.spring.miniproject.domain;

import lombok.*;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
@Builder
public class Sale {

    private int pnumber;
    private String pname;
    private int price;
    private String image;

}
