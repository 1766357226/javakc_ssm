package com.zhg.javakc.modules.product_center.products_span.service;

import com.zhg.javakc.base.service.BaseService;

import com.zhg.javakc.modules.product_center.products_span.dao.SpanGoodsDao;
import com.zhg.javakc.modules.product_center.products_span.entity.SpanGoodsEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SpanGoodsService extends BaseService<SpanGoodsDao, SpanGoodsEntity> {
    @Autowired
    private SpanGoodsDao spanGoodsDao;
    public List<SpanGoodsEntity> findByGoods(String id){
        return spanGoodsDao.findByGoods(id);
    }


}
