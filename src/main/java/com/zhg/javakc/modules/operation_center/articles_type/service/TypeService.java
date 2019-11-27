package com.zhg.javakc.modules.operation_center.articles_type.service;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.service.BaseService;
import com.zhg.javakc.modules.operation_center.articles_type.dao.TypeDao;
import com.zhg.javakc.modules.operation_center.articles_type.entity.ArtTypeEntity;
import com.zhg.javakc.modules.test.dao.TestDao;
import com.zhg.javakc.modules.test.entity.TestEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TypeService extends BaseService<TypeDao, ArtTypeEntity> {
   @Autowired
   private TypeDao typeDao;
    public Page<ArtTypeEntity> queryArt(ArtTypeEntity artTypeEntity,Page<ArtTypeEntity> page){
       //设置分页参数，才会被Mybatis分页插件所识别，在其sql的前后加入分页sql语句
        artTypeEntity.setPage(page);
        //根据分页与查询条件进行测试数据的查询
        List<ArtTypeEntity> artList=typeDao.findList(artTypeEntity);
        //将查询数据设置到分页类的List集合当中，一起返回
        page.setList(artList);
        return page;
    }
    public List<ArtTypeEntity> findByName(){
        return typeDao.findByName();
    }

}
