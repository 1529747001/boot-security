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
import com.boot.security.server.dao.DedeAddonarticleDao;
import com.boot.security.server.model.DedeAddonarticle;

import io.swagger.annotations.ApiOperation;

@RestController
@RequestMapping("/dedeAddonarticles")
public class DedeAddonarticleController {

    @Autowired
    private DedeAddonarticleDao dedeAddonarticleDao;

    @PostMapping
    @ApiOperation(value = "保存")
    public DedeAddonarticle save(@RequestBody DedeAddonarticle dedeAddonarticle) {
        dedeAddonarticleDao.save(dedeAddonarticle);

        return dedeAddonarticle;
    }

    @GetMapping("/{id}")
    @ApiOperation(value = "根据id获取")
    public DedeAddonarticle get(@PathVariable Long id) {
        return dedeAddonarticleDao.getById(id);
    }

    @PutMapping
    @ApiOperation(value = "修改")
    public DedeAddonarticle update(@RequestBody DedeAddonarticle dedeAddonarticle) {
        dedeAddonarticleDao.update(dedeAddonarticle);

        return dedeAddonarticle;
    }

    @GetMapping
    @ApiOperation(value = "列表")
    public PageTableResponse list(PageTableRequest request) {
        return new PageTableHandler(new CountHandler() {

            @Override
            public int count(PageTableRequest request) {
                return dedeAddonarticleDao.count(request.getParams());
            }
        }, new ListHandler() {

            @Override
            public List<DedeAddonarticle> list(PageTableRequest request) {
                return dedeAddonarticleDao.list(request.getParams(), request.getOffset(), request.getLimit());
            }
        }).handle(request);
    }

    @DeleteMapping("/{id}")
    @ApiOperation(value = "删除")
    public void delete(@PathVariable Long id) {
        dedeAddonarticleDao.delete(id);
    }
}
