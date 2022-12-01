package com.spring.miniproject.domain;

import java.util.HashMap;
import java.util.Map;

public class Category {

    public static Map<Integer, String> categoryName;

    static {
        categoryName = new HashMap<>();
        categoryName.put(1, "상의");
        categoryName.put(2, "하의");
        categoryName.put(3, "잡화");

    }
}