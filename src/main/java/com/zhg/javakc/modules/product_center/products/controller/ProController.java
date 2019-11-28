package com.zhg.javakc.modules.product_center.products.controller;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.util.CommonUtil;
import com.zhg.javakc.modules.operation_center.articles.service.ArticlesService;
import com.zhg.javakc.modules.operation_center.articles_type.service.TypeService;
import com.zhg.javakc.modules.product_center.products.entity.Producte;
import com.zhg.javakc.modules.product_center.products.service.ProService;
import com.zhg.javakc.modules.product_center.products_span.service.SpanService;
import com.zhg.javakc.modules.purchase_center.supplier_manager.service.SupService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@Controller
@RequestMapping("/product")
public class ProController {
    @Autowired
    private ProService proService;
    @Autowired
    private SpanService spanService;
    @Autowired
    private SupService supService;
    @Autowired
    private ArticlesService articlesService;
    @Autowired
    private TypeService typeService;

    @RequestMapping("/query")
    public ModelAndView query(Producte entity, HttpServletRequest request, HttpServletResponse response){
        ModelAndView modelAndView=new ModelAndView("product_center/products/list");
        Page<Producte> page=proService.query(entity,new Page<Producte>(request,response));
        modelAndView.addObject("page",page);
        return modelAndView;
    }

    /**
     * 添加方法
     * @param
     * @return
     */

    @RequestMapping(value="/add")
    public String add(ModelMap model)
    {
        model.put("spanList", spanService.findList(null));
        model.put("supList",supService.findByName());
        model.put("articleList",articlesService.findByName());
        model.put("typeList",typeService.findByName());
        return "product_center/products/create";
    }

    @RequestMapping("/save")
    public String save(Producte entity){
        entity.setGoodsId(CommonUtil.uuid());
        proService.save(entity);
        return "redirect:product/query.do";
    }
    @RequestMapping("/get/{id}")
    public String view( @PathVariable String id, ModelMap modelMap){
        Producte entity= proService.get(id);
        modelMap.put("entity",entity);
        modelMap.put("spanList", spanService.findList(null));
        modelMap.put("supList",supService.findByName());
        modelMap.put("articleList",articlesService.findByName());
        modelMap.put("typeList",typeService.findByName());
      return "/product_center/products/update";
    }

    @RequestMapping("/update")
    public String update(Producte entity){
        proService.update(entity);
        return "redirect:/product/query.do";
    }
    @RequestMapping("/updateStatus/{id}")
    public String updateStatus(@PathVariable String id ,ModelMap modelMap){
        proService.updateStatus(id);
        modelMap.put("goodsStatus",2);
        return"redirect:product/query.do";
    }

    @RequestMapping("/delete")
    public String delete(String[] ids){
        proService.delete(ids);
        return "redirect:product/query.do";
    }

    @RequestMapping("/look/{id}")
    public String look(@PathVariable  String id, ModelMap modelMap){
        Producte entity= proService.get(id);
        modelMap.put("entity",entity);
        modelMap.put("spanList", spanService.findList(null));
        return "/product_center/products/look";
    }
}
