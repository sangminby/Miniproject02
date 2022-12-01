package com.spring.miniproject.service;

import com.spring.miniproject.domain.ShopMember;
import com.spring.miniproject.mapper.MemberMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.SQLException;

@Service
public class MemberLoginService {

    @Autowired(required = false)
    private MemberMapper memberMapper;


    public ShopMember login(String uid, String pw) {

        return memberMapper.selectId(uid, pw);
    }
}
