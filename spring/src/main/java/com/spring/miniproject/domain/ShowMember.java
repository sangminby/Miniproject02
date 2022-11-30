package com.spring.miniproject.domain;

import lombok.*;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
@Builder
public class ShowMember {

    private int idx;
    private String sid;
    private String spw;
    private String sname;

}
