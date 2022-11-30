package com.spring.miniproject.mapper;

import com.spring.miniproject.domain.Sale;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface SaleMapper {

    @Select("select * from sale")
    List<Sale> saleList();

    int saleSave (Sale sale);

    @Select("select * from sale where pnumber=#{pnumber}")
    Sale saleRead(int bid);

    int saleModify (Sale sale);

    @Delete("delete from sale where pnumber=#{pnumber}")
    int saleDelete(int bid);




}
