package com.spring.miniproject.domain;

import lombok.*;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
@Builder
public class Shopping {

    private int orderid;
    private String bname;
    private int bsal;
    private String borderDate;
    private String image;

}
