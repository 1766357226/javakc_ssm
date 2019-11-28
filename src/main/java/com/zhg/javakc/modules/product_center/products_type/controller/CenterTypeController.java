package com.zhg.javakc.modules.product_center.products_type.controller;


import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.util.CommonUtil;
import com.zhg.javakc.modules.product_center.products_type.entity.CenterTypeEntity;
import com.zhg.javakc.modules.product_center.products_type.service.CenterTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping(value = "/centertype")
public class CenterTypeController {
    @Autowired
    CenterTypeService typeService;
    @RequestMapping("queryType")
    @ResponseBody
    public List<Map<String,Object>> queryTest(){
       List<Map<String,Object>> list=typeService.queryType();
        return list;
    }
    @RequestMapping("save")
    public String save(CenterTypeEntity centerTypeEntity){
        //设置id
        centerTypeEntity.setTypeId(CommonUtil.uuid());
        typeService.save(centerTypeEntity);
        return "product_center/type/list";
    }

}