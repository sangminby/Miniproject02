package com.spring.miniproject.mapper;

import com.spring.miniproject.domain.Shopping;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface SaleMapper {

    @Select("select * from shopping")
    List<Shopping> shopping();

    int shopSave (Shopping shopping);

    @Select("select * from shopping where bid=#{bid}")
    Shopping shopRead(int bid);

    int shopModify (Shopping shopping);

    @Delete("delete from shopping where bid=#{bid}")
    int shopDelete(int bid);




}
