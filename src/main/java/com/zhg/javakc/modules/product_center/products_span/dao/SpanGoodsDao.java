package com.zhg.javakc.modules.product_center.products_span.dao;

import com.zhg.javakc.base.dao.BaseDao;
import com.zhg.javakc.modules.product_center.products_span.entity.SpanGoodsEntity;


import java.util.List;

public interface SpanGoodsDao extends BaseDao<SpanGoodsEntity> {


    public List<SpanGoodsEntity> findByGoods(String id);
}
