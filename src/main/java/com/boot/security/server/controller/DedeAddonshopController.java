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
import com.boot.security.server.dao.DedeAddonshopDao;
import com.boot.security.server.model.DedeAddonshop;

import io.swagger.annotations.ApiOperation;

@RestController
@RequestMapping("/dedeAddonshops")
public class DedeAddonshopController {

    @Autowired
    private DedeAddonshopDao dedeAddonshopDao;

    @PostMapping
    @ApiOperation(value = "保存")
    public DedeAddonshop save(@RequestBody DedeAddonshop dedeAddonshop) {
        dedeAddonshopDao.save(dedeAddonshop);

        return dedeAddonshop;
    }

    @GetMapping("/{id}")
    @ApiOperation(value = "根据id获取")
    public DedeAddonshop get(@PathVariable Long id) {
        return dedeAddonshopDao.getById(id);
    }

    @PutMapping
    @ApiOperation(value = "修改")
    public DedeAddonshop update(@RequestBody DedeAddonshop dedeAddonshop) {
        dedeAddonshopDao.update(dedeAddonshop);

        return dedeAddonshop;
    }

    @GetMapping
    @ApiOperation(value = "列表")
    public PageTableResponse list(PageTableRequest request) {
        return new PageTableHandler(new CountHandler() {

            @Override
            public int count(PageTableRequest request) {
                return dedeAddonshopDao.count(request.getParams());
            }
        }, new ListHandler() {

            @Override
            public List<DedeAddonshop> list(PageTableRequest request) {
                return dedeAddonshopDao.list(request.getParams(), request.getOffset(), request.getLimit());
            }
        }).handle(request);
    }

    @DeleteMapping("/{id}")
    @ApiOperation(value = "删除")
    public void delete(@PathVariable Long id) {
        dedeAddonshopDao.delete(id);
    }
}
