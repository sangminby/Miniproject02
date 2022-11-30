package com.spring.miniproject.domain;

import lombok.*;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
@Builder
public class ShopMember {

    private int idx;
    private String uid;
    private String pw;
    private String uname;
    private String uaddress;
    private String uaddress2;

}
