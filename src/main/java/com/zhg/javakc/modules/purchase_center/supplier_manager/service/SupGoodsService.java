package com.zhg.javakc.modules.purchase_center.supplier_manager.service;

import com.zhg.javakc.base.service.BaseService;
import com.zhg.javakc.modules.purchase_center.supplier_manager.dao.SupGoodsDao;
import com.zhg.javakc.modules.purchase_center.supplier_manager.entity.SupGoodsEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SupGoodsService extends BaseService<SupGoodsDao,SupGoodsEntity> {
    @Autowired
    private SupGoodsDao supGoodsDao;
    public List<SupGoodsEntity> findByGoods(String id){
        return supGoodsDao.findByGoods(id);
    }
}
