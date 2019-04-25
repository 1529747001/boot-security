package com.boot.security.server.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.boot.security.server.model.DedeAddoninfos;

@Mapper
public interface DedeAddoninfosDao {

    @Select("select * from dede_addoninfos t where t.id = #{id}")
    DedeAddoninfos getById(Long id);

    @Delete("delete from dede_addoninfos where id = #{id}")
    int delete(Long id);

    int update(DedeAddoninfos dedeAddoninfos);
    
    @Options(useGeneratedKeys = true, keyProperty = "id")
    @Insert("insert into dede_addoninfos(aid, typeid, channel, arcrank, mid, click, title, litpic, userip, senddate, flag, lastpost, scores, goodpost, badpost, nativeplace, infotype, body, endtime, tel, email, address, linkman) values(#{aid}, #{typeid}, #{channel}, #{arcrank}, #{mid}, #{click}, #{title}, #{litpic}, #{userip}, #{senddate}, #{flag}, #{lastpost}, #{scores}, #{goodpost}, #{badpost}, #{nativeplace}, #{infotype}, #{body}, #{endtime}, #{tel}, #{email}, #{address}, #{linkman})")
    int save(DedeAddoninfos dedeAddoninfos);
    
    int count(@Param("params") Map<String, Object> params);

    List<DedeAddoninfos> list(@Param("params") Map<String, Object> params, @Param("offset") Integer offset, @Param("limit") Integer limit);
}
