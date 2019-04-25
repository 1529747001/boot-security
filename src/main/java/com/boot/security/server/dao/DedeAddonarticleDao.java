package com.boot.security.server.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.boot.security.server.model.DedeAddonarticle;

@Mapper
public interface DedeAddonarticleDao {

    @Select("select * from dede_addonarticle t where t.id = #{id}")
    DedeAddonarticle getById(Long id);

    @Delete("delete from dede_addonarticle where id = #{id}")
    int delete(Long id);

    int update(DedeAddonarticle dedeAddonarticle);
    
    @Options(useGeneratedKeys = true, keyProperty = "id")
    @Insert("insert into dede_addonarticle(aid, typeid, body, redirecturl, templet, userip) values(#{aid}, #{typeid}, #{body}, #{redirecturl}, #{templet}, #{userip})")
    int save(DedeAddonarticle dedeAddonarticle);
    
    int count(@Param("params") Map<String, Object> params);

    List<DedeAddonarticle> list(@Param("params") Map<String, Object> params, @Param("offset") Integer offset, @Param("limit") Integer limit);
}
