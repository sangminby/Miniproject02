package com.spring.miniproject.service;

import com.spring.miniproject.domain.ShopMember;
import com.spring.miniproject.mapper.MemberMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;

@Service
public class MemberRegService {


    @Autowired(required = false)
    private MemberMapper memberMapper;


    public int memberReg(ShopMember shopMember) {

        return memberMapper.regMember(shopMember);
    }

}
