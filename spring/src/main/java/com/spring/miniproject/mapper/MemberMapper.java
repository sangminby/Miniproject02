package com.spring.miniproject.mapper;

import com.spring.miniproject.domain.ShopMember;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.sql.SQLException;

@Mapper
public interface MemberMapper {

    int regMember(ShopMember shopMember);

    @Select("select * from shopmember where uid=#{param1} and pw=#{param2}")
    ShopMember selectId(String uid, String pw);

}
