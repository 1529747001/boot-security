package com.boot.security.server.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.boot.security.server.model.DedeAddonspec;

@Mapper
public interface DedeAddonspecDao {

    @Select("select * from dede_addonspec t where t.id = #{id}")
    DedeAddonspec getById(Long id);

    @Delete("delete from dede_addonspec where id = #{id}")
    int delete(Long id);

    int update(DedeAddonspec dedeAddonspec);
    
    @Options(useGeneratedKeys = true, keyProperty = "id")
    @Insert("insert into dede_addonspec(aid, typeid, note, templet, userip, redirecturl) values(#{aid}, #{typeid}, #{note}, #{templet}, #{userip}, #{redirecturl})")
    int save(DedeAddonspec dedeAddonspec);
    
    int count(@Param("params") Map<String, Object> params);

    List<DedeAddonspec> list(@Param("params") Map<String, Object> params, @Param("offset") Integer offset, @Param("limit") Integer limit);
}
