package com.zhg.javakc.modules.product_center.products.service;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.service.BaseService;

import com.zhg.javakc.modules.product_center.products.dao.ProDao;
import com.zhg.javakc.modules.product_center.products.entity.Producte;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class ProService extends BaseService<ProDao, Producte> {

    @Autowired
    private ProDao proDao;
    public Page<Producte> queryTest(Producte testEntity, Page<Producte> page){
        //设置分页参数，才会被Mybatis分页插件所识别，在其sql的前后加入分页sql语句
        testEntity.setPage(page);
        //根据分页与查询条件进行测试数据的查询
        List<Producte> testList=proDao.findList(testEntity);
        //将查询数据设置到分页类的List集合当中，一起返回
        page.setList(testList);
        return page;
    }
}
