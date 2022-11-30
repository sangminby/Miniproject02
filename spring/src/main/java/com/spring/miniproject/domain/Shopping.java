package com.spring.miniproject.domain;

import lombok.*;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
@Builder
public class Shopping {

    private int bid;
    private String bname;
    private int bsal;
    private String borderDate;
    private String bimage;

}
