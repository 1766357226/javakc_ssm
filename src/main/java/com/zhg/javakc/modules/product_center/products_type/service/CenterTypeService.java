package com.zhg.javakc.modules.product_center.products_type.service;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.service.BaseService;
import com.zhg.javakc.modules.product_center.products_type.dao.CenterTypeDao;
import com.zhg.javakc.modules.product_center.products_type.entity.CenterTypeEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class CenterTypeService extends BaseService<CenterTypeDao, CenterTypeEntity> {
    @Autowired
    CenterTypeDao typeDao;
    public List<Map<String,Object>> queryType(){

        return typeDao.queryType();
    }


    public List<CenterTypeEntity> findByName() {
        List<CenterTypeEntity> list=typeDao.queryByName();
        return list;
    }
}
