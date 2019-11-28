package com.zhg.javakc.modules.product_center.products_type.dao;

import com.zhg.javakc.base.dao.BaseDao;
import com.zhg.javakc.modules.product_center.products_type.entity.CenterTypeEntity;

import java.util.List;
import java.util.Map;

public interface CenterTypeDao extends BaseDao<CenterTypeEntity> {
    public List<Map<String, Object>> queryType();
}