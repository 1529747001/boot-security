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
import com.boot.security.server.dao.DedeAddonspecDao;
import com.boot.security.server.model.DedeAddonspec;

import io.swagger.annotations.ApiOperation;

@RestController
@RequestMapping("/dedeAddonspecs")
public class DedeAddonspecController {

    @Autowired
    private DedeAddonspecDao dedeAddonspecDao;

    @PostMapping
    @ApiOperation(value = "保存")
    public DedeAddonspec save(@RequestBody DedeAddonspec dedeAddonspec) {
        dedeAddonspecDao.save(dedeAddonspec);

        return dedeAddonspec;
    }

    @GetMapping("/{id}")
    @ApiOperation(value = "根据id获取")
    public DedeAddonspec get(@PathVariable Long id) {
        return dedeAddonspecDao.getById(id);
    }

    @PutMapping
    @ApiOperation(value = "修改")
    public DedeAddonspec update(@RequestBody DedeAddonspec dedeAddonspec) {
        dedeAddonspecDao.update(dedeAddonspec);

        return dedeAddonspec;
    }

    @GetMapping
    @ApiOperation(value = "列表")
    public PageTableResponse list(PageTableRequest request) {
        return new PageTableHandler(new CountHandler() {

            @Override
            public int count(PageTableRequest request) {
                return dedeAddonspecDao.count(request.getParams());
            }
        }, new ListHandler() {

            @Override
            public List<DedeAddonspec> list(PageTableRequest request) {
                return dedeAddonspecDao.list(request.getParams(), request.getOffset(), request.getLimit());
            }
        }).handle(request);
    }

    @DeleteMapping("/{id}")
    @ApiOperation(value = "删除")
    public void delete(@PathVariable Long id) {
        dedeAddonspecDao.delete(id);
    }
}
