package com.zhg.javakc.modules.purchase_center.purchase_order.service;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.service.BaseService;
import com.zhg.javakc.modules.purchase_center.purchase_order.dao.OrderDao;
import com.zhg.javakc.modules.purchase_center.purchase_order.entity.OrderEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrderService extends BaseService<OrderDao, OrderEntity> {
    @Autowired
    private OrderDao orderDao;
    public Page<OrderEntity> findOrder(OrderEntity orderEntity, Page page){
        orderEntity.setPage(page);
       page.setList(orderDao.findList(orderEntity));
       return page;
    }
}
