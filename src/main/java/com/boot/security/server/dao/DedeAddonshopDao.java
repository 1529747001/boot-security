package com.boot.security.server.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.boot.security.server.model.DedeAddonshop;

@Mapper
public interface DedeAddonshopDao {

    @Select("select * from dede_addonshop t where t.id = #{id}")
    DedeAddonshop getById(Long id);

    @Delete("delete from dede_addonshop where id = #{id}")
    int delete(Long id);

    int update(DedeAddonshop dedeAddonshop);
    
    @Options(useGeneratedKeys = true, keyProperty = "id")
    @Insert("insert into dede_addonshop(aid, typeid, body, price, trueprice, brand, units, templet, userip, redirecturl, vocation, infotype, uptime) values(#{aid}, #{typeid}, #{body}, #{price}, #{trueprice}, #{brand}, #{units}, #{templet}, #{userip}, #{redirecturl}, #{vocation}, #{infotype}, #{uptime})")
    int save(DedeAddonshop dedeAddonshop);
    
    int count(@Param("params") Map<String, Object> params);

    List<DedeAddonshop> list(@Param("params") Map<String, Object> params, @Param("offset") Integer offset, @Param("limit") Integer limit);
}
