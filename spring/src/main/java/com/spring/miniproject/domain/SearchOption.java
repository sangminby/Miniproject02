package com.spring.miniproject.domain;

import lombok.*;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
@Builder
public class SearchOption {

    private String searchType;
    private String keyWord;

}
