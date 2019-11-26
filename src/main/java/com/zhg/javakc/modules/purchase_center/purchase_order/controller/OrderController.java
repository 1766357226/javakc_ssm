package com.zhg.javakc.modules.purchase_center.purchase_order.controller;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.modules.purchase_center.purchase_order.entity.OrderEntity;
import com.zhg.javakc.modules.purchase_center.purchase_order.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("/order")
public class OrderController {
    @Autowired
    private OrderService orderService;
    @RequestMapping("/query")
    public String queryOrder(ModelMap model,OrderEntity orderEntity, HttpServletResponse response, HttpServletRequest request,Integer purType ){
        System.out.println(purType);
        orderEntity.setPurType(purType);
        model.put("page",orderService.findOrder(orderEntity,new Page(request,response)));
        return "purchase_center/purchase_order/list";
    }
}
