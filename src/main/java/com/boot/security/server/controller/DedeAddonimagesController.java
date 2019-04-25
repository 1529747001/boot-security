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
import com.boot.security.server.dao.DedeAddonimagesDao;
import com.boot.security.server.model.DedeAddonimages;

import io.swagger.annotations.ApiOperation;

@RestController
@RequestMapping("/dedeAddonimagess")
public class DedeAddonimagesController {

    @Autowired
    private DedeAddonimagesDao dedeAddonimagesDao;

    @PostMapping
    @ApiOperation(value = "保存")
    public DedeAddonimages save(@RequestBody DedeAddonimages dedeAddonimages) {
        dedeAddonimagesDao.save(dedeAddonimages);

        return dedeAddonimages;
    }

    @GetMapping("/{id}")
    @ApiOperation(value = "根据id获取")
    public DedeAddonimages get(@PathVariable Long id) {
        return dedeAddonimagesDao.getById(id);
    }

    @PutMapping
    @ApiOperation(value = "修改")
    public DedeAddonimages update(@RequestBody DedeAddonimages dedeAddonimages) {
        dedeAddonimagesDao.update(dedeAddonimages);

        return dedeAddonimages;
    }

    @GetMapping
    @ApiOperation(value = "列表")
    public PageTableResponse list(PageTableRequest request) {
        return new PageTableHandler(new CountHandler() {

            @Override
            public int count(PageTableRequest request) {
                return dedeAddonimagesDao.count(request.getParams());
            }
        }, new ListHandler() {

            @Override
            public List<DedeAddonimages> list(PageTableRequest request) {
                return dedeAddonimagesDao.list(request.getParams(), request.getOffset(), request.getLimit());
            }
        }).handle(request);
    }

    @DeleteMapping("/{id}")
    @ApiOperation(value = "删除")
    public void delete(@PathVariable Long id) {
        dedeAddonimagesDao.delete(id);
    }
}
