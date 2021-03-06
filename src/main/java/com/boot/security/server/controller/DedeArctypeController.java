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
import com.boot.security.server.dao.DedeArctypeDao;
import com.boot.security.server.model.DedeArctype;

import io.swagger.annotations.ApiOperation;

@RestController
@RequestMapping("/dedeArctypes")
public class DedeArctypeController {

    @Autowired
    private DedeArctypeDao dedeArctypeDao;

    @PostMapping
    @ApiOperation(value = "保存")
    public DedeArctype save(@RequestBody DedeArctype dedeArctype) {
        dedeArctypeDao.save(dedeArctype);

        return dedeArctype;
    }

    @GetMapping("/{id}")
    @ApiOperation(value = "根据id获取")
    public DedeArctype get(@PathVariable Long id) {
        return dedeArctypeDao.getById(id);
    }

    @PutMapping
    @ApiOperation(value = "修改")
    public DedeArctype update(@RequestBody DedeArctype dedeArctype) {
        dedeArctypeDao.update(dedeArctype);

        return dedeArctype;
    }

    @GetMapping
    @ApiOperation(value = "列表")
    public PageTableResponse list(PageTableRequest request) {
        return new PageTableHandler(new CountHandler() {

            @Override
            public int count(PageTableRequest request) {
                return dedeArctypeDao.count(request.getParams());
            }
        }, new ListHandler() {

            @Override
            public List<DedeArctype> list(PageTableRequest request) {
                return dedeArctypeDao.list(request.getParams(), request.getOffset(), request.getLimit());
            }
        }).handle(request);
    }

    @DeleteMapping("/{id}")
    @ApiOperation(value = "删除")
    public void delete(@PathVariable Long id) {
        dedeArctypeDao.delete(id);
    }
}
