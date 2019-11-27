package com.zhg.javakc.modules.product_center.products_span.dao;

import com.zhg.javakc.base.dao.BaseDao;
import com.zhg.javakc.modules.product_center.products_span.entity.Span;

import java.util.Map;

public interface SpanDao extends BaseDao<Span> {

    public void insertRelation(Map<String, Object> data);
}
