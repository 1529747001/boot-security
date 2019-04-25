package com.boot.security.server.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.boot.security.server.model.DedeAddonimages;

@Mapper
public interface DedeAddonimagesDao {

    @Select("select * from dede_addonimages t where t.id = #{id}")
    DedeAddonimages getById(Long id);

    @Delete("delete from dede_addonimages where id = #{id}")
    int delete(Long id);

    int update(DedeAddonimages dedeAddonimages);
    
    @Options(useGeneratedKeys = true, keyProperty = "id")
    @Insert("insert into dede_addonimages(aid, typeid, pagestyle, maxwidth, imgurls, row, col, isrm, ddmaxwidth, pagepicnum, templet, userip, redirecturl, body) values(#{aid}, #{typeid}, #{pagestyle}, #{maxwidth}, #{imgurls}, #{row}, #{col}, #{isrm}, #{ddmaxwidth}, #{pagepicnum}, #{templet}, #{userip}, #{redirecturl}, #{body})")
    int save(DedeAddonimages dedeAddonimages);
    
    int count(@Param("params") Map<String, Object> params);

    List<DedeAddonimages> list(@Param("params") Map<String, Object> params, @Param("offset") Integer offset, @Param("limit") Integer limit);
}
