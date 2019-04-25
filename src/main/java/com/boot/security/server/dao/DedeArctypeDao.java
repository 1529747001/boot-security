package com.boot.security.server.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.boot.security.server.model.DedeArctype;

@Mapper
public interface DedeArctypeDao {

    @Select("select * from dede_arctype t where t.id = #{id}")
    DedeArctype getById(Long id);

    @Delete("delete from dede_arctype where id = #{id}")
    int delete(Long id);

    int update(DedeArctype dedeArctype);
    
    @Options(useGeneratedKeys = true, keyProperty = "id")
    @Insert("insert into dede_arctype(reid, topid, sortrank, typename, typedir, isdefault, defaultname, issend, channeltype, maxpage, ispart, corank, tempindex, templist, temparticle, namerule, namerule2, modname, description, keywords, seotitle, moresite, sitepath, siteurl, ishidden, cross, crossid, content, smalltypes) values(#{reid}, #{topid}, #{sortrank}, #{typename}, #{typedir}, #{isdefault}, #{defaultname}, #{issend}, #{channeltype}, #{maxpage}, #{ispart}, #{corank}, #{tempindex}, #{templist}, #{temparticle}, #{namerule}, #{namerule2}, #{modname}, #{description}, #{keywords}, #{seotitle}, #{moresite}, #{sitepath}, #{siteurl}, #{ishidden}, #{cross}, #{crossid}, #{content}, #{smalltypes})")
    int save(DedeArctype dedeArctype);
    
    int count(@Param("params") Map<String, Object> params);

    List<DedeArctype> list(@Param("params") Map<String, Object> params, @Param("offset") Integer offset, @Param("limit") Integer limit);
}
