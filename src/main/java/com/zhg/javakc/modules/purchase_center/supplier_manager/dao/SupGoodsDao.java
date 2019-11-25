package com.zhg.javakc.modules.purchase_center.supplier_manager.dao;

import com.zhg.javakc.base.dao.BaseDao;
import com.zhg.javakc.modules.purchase_center.supplier_manager.entity.SupGoodsEntity;

import java.util.List;

public interface SupGoodsDao extends BaseDao<SupGoodsEntity> {
    public List<SupGoodsEntity> findByGoods(String id);
}
