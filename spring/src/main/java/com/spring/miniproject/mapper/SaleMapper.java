package com.spring.miniproject.mapper;

import com.spring.miniproject.domain.Sale;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.sql.SQLException;
import java.util.List;

@Mapper
public interface SaleMapper {

    @Select("select * from sale")
    List<Sale> saleList() throws SQLException;

    int saleSave(Sale sale);

    @Select("select * from sale where pnumber=#{pnumber}")
    Sale saleRead(int bid);

    int saleModify (Sale sale);

    @Delete("delete from sale where pnumber=#{pnumber}")
    int saleDelete(int bid);




}
