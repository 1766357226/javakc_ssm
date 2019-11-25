package com.zhg.javakc.modules.product_center.products.service;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.service.BaseService;

import com.zhg.javakc.base.util.CommonUtil;
import com.zhg.javakc.modules.product_center.products.dao.ProDao;
import com.zhg.javakc.modules.product_center.products.entity.Producte;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
    @Transactional(readOnly = false)
    public void save(Producte entity, String[] spanIds)
    {
        String goodsId = CommonUtil.uuid();
        entity.setGoodsId( goodsId );
        proDao.insert(entity);

        for(String spanId:spanIds)
        {
            Map<String, Object> data = new HashMap<String, Object>();
            data.put("goodsId", goodsId);
            data.put("spanId", spanId);
            proDao.insertRelation(data);
        }
    }

    /**
     * 修改用户, 绑定角色信息
     * @param entity
     * @param spanIds
     */
    @Transactional(readOnly = false)
    public void update(Producte entity, String[] spanIds)
    {
        proDao.update(entity);

        proDao.deleteRelation(entity.getGoodsId());

        for(String spanId:spanIds)
        {
            Map<String, Object> data = new HashMap<String, Object>();
            data.put("goodsId", entity.getGoodsId());
            data.put("spanId", spanId);
            proDao.insertRelation(data);
        }
    }

    /**
     * 删除用户及相关信息
     */
    @Transactional(readOnly = false)
    public void delete(String[] id) {
        for(String goodsId: id)
        {
            proDao.deleteRelation(goodsId);
        }
        dao.delete(id);
    }
}
