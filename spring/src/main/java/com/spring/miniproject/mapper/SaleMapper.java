package com.spring.miniproject.mapper;

import com.spring.miniproject.domain.Sale;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface SaleMapper {

    @Select("select * from shopping")
    List<Sale> shopping();

    int shopSave (Sale shopping);

    @Select("select * from shopping where bid=#{bid}")
    Sale shopRead(int bid);

    int shopModify (Sale shopping);

    @Delete("delete from shopping where bid=#{bid}")
    int shopDelete(int bid);




}
