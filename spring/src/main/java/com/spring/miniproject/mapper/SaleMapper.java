package com.spring.miniproject.mapper;

import com.spring.miniproject.domain.Sale;
import com.spring.miniproject.domain.SearchOption;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface SaleMapper {

    @Select("select * from sale")
    List<Sale> saleList();

    int saleSave(Sale sale);

    @Select("select * from sale where pnumber=#{pnumber}")
    Sale saleRead(int pnumber);

    int saleModify (Sale sale);

    @Delete("delete from sale where pnumber=#{pnumber}")
    int saleDelete(int pnumber);

    List<Sale> searchOptionByAll(SearchOption searchOption);

    List<Sale> categoryOne(Sale sale);

    List<Sale> categoryTwo(Sale sale);

    List<Sale> categoryThree(Sale sale);

}
