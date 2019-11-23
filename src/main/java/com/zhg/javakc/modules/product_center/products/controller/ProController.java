package com.zhg.javakc.modules.product_center.products.controller;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.util.CommonUtil;
import com.zhg.javakc.modules.product_center.products.entity.Producte;
import com.zhg.javakc.modules.product_center.products.service.ProService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("/product")
public class ProController {
    @Autowired
    private ProService proService;
    @RequestMapping("/query")
    public ModelAndView query(Producte entity, HttpServletRequest request, HttpServletResponse response){
        ModelAndView modelAndView=new ModelAndView("test/list");
        Page<Producte> page=proService.queryTest(entity,new Page<Producte>(request,response));
        modelAndView.addObject("page",page);
        return modelAndView;
    }
    @RequestMapping("/save")
    public String save(Producte entity){
        entity.setGoodsId(CommonUtil.uuid());
        proService.save(entity);
        return "redirect:query.do";
    }
    @RequestMapping("/get")
    public String view(String ids, ModelMap modelMap){
        Producte entity= proService.get(ids);
         modelMap.put("entity",entity);
      return "/product_center/products/update";
    }
    @RequestMapping("/update")
    public String update(Producte entity){
        proService.update(entity);
        return"redirect:query.do";
    }
    @RequestMapping("/delete")
    public String delete(String[] ids){
        proService.delete(ids);
        return "redirect:query.do";
    }
}
