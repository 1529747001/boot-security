package com.boot.security.server.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.boot.security.server.model.DedeAddonsoft;

@Mapper
public interface DedeAddonsoftDao {

    @Select("select * from dede_addonsoft t where t.id = #{id}")
    DedeAddonsoft getById(Long id);

    @Delete("delete from dede_addonsoft where id = #{id}")
    int delete(Long id);

    int update(DedeAddonsoft dedeAddonsoft);
    
    @Options(useGeneratedKeys = true, keyProperty = "id")
    @Insert("insert into dede_addonsoft(aid, typeid, filetype, language, softtype, accredit, os, softrank, officialUrl, officialDemo, softsize, softlinks, introduce, daccess, needmoney, templet, userip, redirecturl) values(#{aid}, #{typeid}, #{filetype}, #{language}, #{softtype}, #{accredit}, #{os}, #{softrank}, #{officialUrl}, #{officialDemo}, #{softsize}, #{softlinks}, #{introduce}, #{daccess}, #{needmoney}, #{templet}, #{userip}, #{redirecturl})")
    int save(DedeAddonsoft dedeAddonsoft);
    
    int count(@Param("params") Map<String, Object> params);

    List<DedeAddonsoft> list(@Param("params") Map<String, Object> params, @Param("offset") Integer offset, @Param("limit") Integer limit);
}
