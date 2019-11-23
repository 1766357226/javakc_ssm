package com.zhg.javakc.modules.product_center.products_span.service;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.service.BaseService;
import com.zhg.javakc.modules.product_center.products_span.dao.SpanDao;
import com.zhg.javakc.modules.product_center.products_span.entity.Span;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class SpanService extends BaseService<SpanDao, Span> {

    @Autowired
    private SpanDao spanDao;
    public Page<Span> queryTest(Span span, Page<Span> page){
        //设置分页参数，才会被Mybatis分页插件所识别，在其sql的前后加入分页sql语句
        span.setPage(page);
        //根据分页与查询条件进行测试数据的查询
        List<Span> spanList=spanDao.findList(span);
        //将查询数据设置到分页类的List集合当中，一起返回
        page.setList(spanList);
        return page;
    }
}
