package com.zhg.javakc.modules.purchase_center.supplier_manager.dao;

import com.zhg.javakc.base.dao.BaseDao;
import com.zhg.javakc.modules.purchase_center.supplier_manager.entity.SupGoodsEntity;
import com.zhg.javakc.modules.purchase_center.supplier_manager.entity.SupplierEntity;

import java.util.List;

public interface SupDao extends BaseDao<SupplierEntity> {
    public List<SupGoodsEntity> findBySup(String id);
    public List<SupplierEntity> findByName();

}
