package com.spring.miniproject.domain;

import lombok.*;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
@Builder
public class Order {

    private int pnumber;
    private String oname;
    private int oprice;
    private String orderDate;

}
