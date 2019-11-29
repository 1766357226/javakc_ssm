package com.zhg.javakc.modules.purchase_center.purchase_order.controller;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.modules.purchase_center.purchase_order.entity.OrderEntity;
import com.zhg.javakc.modules.purchase_center.purchase_order.service.OrderService;
import com.zhg.javakc.modules.purchase_center.supplier_manager.service.SupService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/order")
public class OrderController {
    @Autowired
    private OrderService orderService;
    @Autowired
    private SupService supService;
    @RequestMapping("/query")
    public String queryOrder(ModelMap model,OrderEntity orderEntity, HttpServletResponse response, HttpServletRequest request,Integer purType ){
//        System.out.println(purType);
        orderEntity.setPurType(purType);
        model.put("page",orderService.findOrder(orderEntity,new Page(request,response)));
        List list=new ArrayList();
        for(Integer i=0;i<=3;i++){
            orderEntity.setPurType(i);
          list.add(orderService.findByCount(orderEntity));
        }
        model.put("entity",orderEntity);
        orderEntity.setCount(list);
        model.put("count",orderEntity);
        model.put("supName",supService.findByName());
        return "purchase_center/purchase_order/list";
    }
}
