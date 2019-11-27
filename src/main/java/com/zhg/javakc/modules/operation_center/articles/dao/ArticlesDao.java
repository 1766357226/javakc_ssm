package com.zhg.javakc.modules.operation_center.articles.dao;

import com.zhg.javakc.base.dao.BaseDao;
import com.zhg.javakc.modules.operation_center.articles.entity.ArticlesEntity;

import java.util.List;

public interface ArticlesDao extends BaseDao<ArticlesEntity> {
    public List<ArticlesEntity> findByName();

}
