package com.zhg.javakc.modules.purchase_center.supplier_manager.service;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.service.BaseService;
import com.zhg.javakc.modules.purchase_center.supplier_manager.dao.SupDao;
import com.zhg.javakc.modules.purchase_center.supplier_manager.entity.SupGoodsEntity;
import com.zhg.javakc.modules.purchase_center.supplier_manager.entity.SupplierEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SupService extends BaseService<SupDao, SupplierEntity> {
    @Autowired
    private SupDao supDao;

    /**
     * 分页查询
     * @param page
     * @param supplierEntity
     * @return
     */
    public Page<SupplierEntity> findSup(Page page,SupplierEntity supplierEntity){
        supplierEntity.setPage(page);
        page.setList(supDao.findList(supplierEntity));
        return page;
    }
    public List<SupGoodsEntity> findBySup(String id){
        return supDao.findBySup(id);
    }

    public List<SupplierEntity> fingByName(){
        return supDao.fingByName();
    }
}
