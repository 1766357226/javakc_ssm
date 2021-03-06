package com.zhg.javakc.modules.operation_center.articles_type.dao;

import com.zhg.javakc.base.dao.BaseDao;
import com.zhg.javakc.modules.operation_center.articles_type.entity.ArtTypeEntity;
import com.zhg.javakc.modules.test.entity.TestEntity;

import java.util.List;

public interface TypeDao extends BaseDao<ArtTypeEntity> {
    public List<ArtTypeEntity> findByName();
}
