package com.zhg.javakc.modules.product_center.products.dao;

import com.zhg.javakc.base.dao.BaseDao;
import com.zhg.javakc.modules.product_center.products.entity.Producte;

import java.util.Map;

public interface ProDao extends BaseDao<Producte> {
    public void insertRelation(Map<String, Object> data);

    public void deleteRelation(String goodsId);

    public void updateStatus(String id);

}
