package com.example.toy_springboots.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.toy_springboots.Paginations;
import com.example.toy_springboots.dao.ToySpringbootsDao;

@Service
public class ToySpringbootsService {
    @Autowired
    ToySpringbootsDao toySpringbootsDao;

    @Autowired
    AttachFileService attachFileService;

    public Object getList(Object dataMap) {
        String sqlMapId = "toySpringboots.selectAllFromUSER";
        Object result = toySpringbootsDao.getList(sqlMapId, dataMap);
        return result;
    }

    public Object getOneByUID(Object dataMap) {
        String sqlMapId = "toySpringboots.selectByUID";
        Object result = toySpringbootsDao.getOneByUID(sqlMapId, dataMap);
        return result;
    }

    public Object update(Object dataMap) {
        String sqlMapId = "toySpringboots.updateByUID";
        Object result = toySpringbootsDao.update(sqlMapId, dataMap);
        return result;
    }

    public Object updateAndGetList(Object dataMap) {
        Object result = this.update(dataMap);
        result = this.getList(dataMap);
        return result;
    }

    public Object getListWithPagination(Object dataMap) {
        Map<String, Object> result = new HashMap<String, Object>();
        int totalCount = (int) this.getTotal(dataMap);
        int currentPage = (int) ((HashMap<String, Object>) dataMap).get("currentPage");
        Paginations paginations = new Paginations(totalCount, currentPage);
        result.put("paginations", paginations);
        ((HashMap<String, Object>) dataMap).put("pageBegin", paginations.getPageBegin());
        result.put("resultList", this.getList(dataMap));
        return result;
    }

    public Object getTotal(Object dataMap) {
        String sqlMapId = "toySpringboots.selectTotal";
        Object result = toySpringbootsDao.getOne(sqlMapId, dataMap);
        return result;
    }

    public Object insertOne(Object dataMap) {
        String sqlMapId = "toySpringboots.insertWithUID";
        Object result = toySpringbootsDao.insert(sqlMapId, dataMap);
        return result;
    }

    public Object insertOneAndGetList(Object dataMap) {
        Object result = this.insertOne(dataMap);
        result = this.getList(dataMap);
        return result;

    }

    public Object insertWithFilesAndGetList(Object dataMap) {
        // insert files
        Object result = attachFileService.insertMulti(dataMap);
        result = this.insertOne(dataMap);
        result = this.getList(dataMap);
        return result;

    }

    public Object delete(Object dataMap) {
        String sqlMapId = "toySpringboots.deleteByUID";
        Object result = toySpringbootsDao.delete(sqlMapId, dataMap);
        return result;
    }

    public Object deleteAndGetList(Object dataMap) {
        Object result = this.delete(dataMap);
        result = this.getList(dataMap);
        return result;

    }

    public Object login(Object dataMap) {
        String sqlMapId = "toySpringboots.selectByUID";
        Object result = toySpringbootsDao.login(sqlMapId, dataMap);
        return result;
    }

}
