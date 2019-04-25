package com.boot.security.server.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.boot.security.server.page.table.PageTableRequest;
import com.boot.security.server.page.table.PageTableHandler;
import com.boot.security.server.page.table.PageTableResponse;
import com.boot.security.server.page.table.PageTableHandler.CountHandler;
import com.boot.security.server.page.table.PageTableHandler.ListHandler;
import com.boot.security.server.dao.DedeArchivesDao;
import com.boot.security.server.model.DedeArchives;

import io.swagger.annotations.ApiOperation;

@RestController
@RequestMapping("/dedeArchivess")
public class DedeArchivesController {

    @Autowired
    private DedeArchivesDao dedeArchivesDao;

    @PostMapping
    @ApiOperation(value = "保存")
    public DedeArchives save(@RequestBody DedeArchives dedeArchives) {
        dedeArchivesDao.save(dedeArchives);

        return dedeArchives;
    }

    @GetMapping("/{id}")
    @ApiOperation(value = "根据id获取")
    public DedeArchives get(@PathVariable Long id) {
        return dedeArchivesDao.getById(id);
    }

    @PutMapping
    @ApiOperation(value = "修改")
    public DedeArchives update(@RequestBody DedeArchives dedeArchives) {
        dedeArchivesDao.update(dedeArchives);

        return dedeArchives;
    }

    @GetMapping
    @ApiOperation(value = "列表")
    public PageTableResponse list(PageTableRequest request) {
        return new PageTableHandler(new CountHandler() {

            @Override
            public int count(PageTableRequest request) {
                return dedeArchivesDao.count(request.getParams());
            }
        }, new ListHandler() {

            @Override
            public List<DedeArchives> list(PageTableRequest request) {
                return dedeArchivesDao.list(request.getParams(), request.getOffset(), request.getLimit());
            }
        }).handle(request);
    }

    @DeleteMapping("/{id}")
    @ApiOperation(value = "删除")
    public void delete(@PathVariable Long id) {
        dedeArchivesDao.delete(id);
    }
}
