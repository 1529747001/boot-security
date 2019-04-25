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
import com.boot.security.server.dao.DedeAddonsoftDao;
import com.boot.security.server.model.DedeAddonsoft;

import io.swagger.annotations.ApiOperation;

@RestController
@RequestMapping("/dedeAddonsofts")
public class DedeAddonsoftController {

    @Autowired
    private DedeAddonsoftDao dedeAddonsoftDao;

    @PostMapping
    @ApiOperation(value = "保存")
    public DedeAddonsoft save(@RequestBody DedeAddonsoft dedeAddonsoft) {
        dedeAddonsoftDao.save(dedeAddonsoft);

        return dedeAddonsoft;
    }

    @GetMapping("/{id}")
    @ApiOperation(value = "根据id获取")
    public DedeAddonsoft get(@PathVariable Long id) {
        return dedeAddonsoftDao.getById(id);
    }

    @PutMapping
    @ApiOperation(value = "修改")
    public DedeAddonsoft update(@RequestBody DedeAddonsoft dedeAddonsoft) {
        dedeAddonsoftDao.update(dedeAddonsoft);

        return dedeAddonsoft;
    }

    @GetMapping
    @ApiOperation(value = "列表")
    public PageTableResponse list(PageTableRequest request) {
        return new PageTableHandler(new CountHandler() {

            @Override
            public int count(PageTableRequest request) {
                return dedeAddonsoftDao.count(request.getParams());
            }
        }, new ListHandler() {

            @Override
            public List<DedeAddonsoft> list(PageTableRequest request) {
                return dedeAddonsoftDao.list(request.getParams(), request.getOffset(), request.getLimit());
            }
        }).handle(request);
    }

    @DeleteMapping("/{id}")
    @ApiOperation(value = "删除")
    public void delete(@PathVariable Long id) {
        dedeAddonsoftDao.delete(id);
    }
}
