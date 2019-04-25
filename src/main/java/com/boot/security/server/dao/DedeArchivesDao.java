package com.boot.security.server.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.boot.security.server.model.DedeArchives;

@Mapper
public interface DedeArchivesDao {

    @Select("select * from dede_archives t where t.id = #{id}")
    DedeArchives getById(Long id);

    @Delete("delete from dede_archives where id = #{id}")
    int delete(Long id);

    int update(DedeArchives dedeArchives);
    
    @Options(useGeneratedKeys = true, keyProperty = "id")
    @Insert("insert into dede_archives(typeid, typeid2, sortrank, flag, ismake, channel, arcrank, click, money, title, shorttitle, color, writer, source, litpic, pubdate, senddate, mid, keywords, lastpost, scores, goodpost, badpost, voteid, notpost, description, filename, dutyadmin, tackid, mtype, weight) values(#{typeid}, #{typeid2}, #{sortrank}, #{flag}, #{ismake}, #{channel}, #{arcrank}, #{click}, #{money}, #{title}, #{shorttitle}, #{color}, #{writer}, #{source}, #{litpic}, #{pubdate}, #{senddate}, #{mid}, #{keywords}, #{lastpost}, #{scores}, #{goodpost}, #{badpost}, #{voteid}, #{notpost}, #{description}, #{filename}, #{dutyadmin}, #{tackid}, #{mtype}, #{weight})")
    int save(DedeArchives dedeArchives);
    
    int count(@Param("params") Map<String, Object> params);

    List<DedeArchives> list(@Param("params") Map<String, Object> params, @Param("offset") Integer offset, @Param("limit") Integer limit);
}
