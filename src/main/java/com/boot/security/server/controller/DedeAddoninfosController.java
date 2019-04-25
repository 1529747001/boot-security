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
import com.boot.security.server.dao.DedeAddoninfosDao;
import com.boot.security.server.model.DedeAddoninfos;

import io.swagger.annotations.ApiOperation;

@RestController
@RequestMapping("/dedeAddoninfoss")
public class DedeAddoninfosController {

    @Autowired
    private DedeAddoninfosDao dedeAddoninfosDao;

    @PostMapping
    @ApiOperation(value = "保存")
    public DedeAddoninfos save(@RequestBody DedeAddoninfos dedeAddoninfos) {
        dedeAddoninfosDao.save(dedeAddoninfos);

        return dedeAddoninfos;
    }

    @GetMapping("/{id}")
    @ApiOperation(value = "根据id获取")
    public DedeAddoninfos get(@PathVariable Long id) {
        return dedeAddoninfosDao.getById(id);
    }

    @PutMapping
    @ApiOperation(value = "修改")
    public DedeAddoninfos update(@RequestBody DedeAddoninfos dedeAddoninfos) {
        dedeAddoninfosDao.update(dedeAddoninfos);

        return dedeAddoninfos;
    }

    @GetMapping
    @ApiOperation(value = "列表")
    public PageTableResponse list(PageTableRequest request) {
        return new PageTableHandler(new CountHandler() {

            @Override
            public int count(PageTableRequest request) {
                return dedeAddoninfosDao.count(request.getParams());
            }
        }, new ListHandler() {

            @Override
            public List<DedeAddoninfos> list(PageTableRequest request) {
                return dedeAddoninfosDao.list(request.getParams(), request.getOffset(), request.getLimit());
            }
        }).handle(request);
    }

    @DeleteMapping("/{id}")
    @ApiOperation(value = "删除")
    public void delete(@PathVariable Long id) {
        dedeAddoninfosDao.delete(id);
    }
}
