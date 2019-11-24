package com.zhg.javakc.modules.purchase_center.supplier_manager.controller;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.util.CommonUtil;
import com.zhg.javakc.modules.purchase_center.supplier_manager.entity.SupplierEntity;
import com.zhg.javakc.modules.purchase_center.supplier_manager.service.SupService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("/sup")
public class SupController {
    @Autowired
    private SupService supService;
    @RequestMapping("/query")
    public String querySup(SupplierEntity supplierEntity, HttpServletRequest request, HttpServletResponse response, ModelMap model){
        model.put("page",supService.findSup(new Page(request,response),supplierEntity));
        model.put("entity",supplierEntity);
        return "/purchase_center/supplier_manager/list";
    }
    @RequestMapping("/add")
    public String add(ModelMap model)
    {
        return "purchase_center/supplier_manager/create";
    }
    @RequestMapping("/save")
    public String save(SupplierEntity entity){
        entity.setSupId(CommonUtil.uuid());
        supService.save(entity);
        return  "redirect:/sup/query.do";

    }
}
