package com.zhg.javakc.modules.product_center.products_span.controller;


import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.util.CommonUtil;
import com.zhg.javakc.modules.product_center.products.entity.Producte;
import com.zhg.javakc.modules.product_center.products.service.ProService;
import com.zhg.javakc.modules.product_center.products_span.entity.Span;
import com.zhg.javakc.modules.product_center.products_span.entity.SpanGoodsEntity;
import com.zhg.javakc.modules.product_center.products_span.entity.SpanTypeEntity;
import com.zhg.javakc.modules.product_center.products_span.service.SpanService;
import com.zhg.javakc.modules.product_center.products_span.service.SpanGoodsService;
import com.zhg.javakc.modules.product_center.products_span.service.SpanTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
@RequestMapping("/span")
public class SpanController {

    @Autowired
    private SpanService spanService;
    @Autowired
    private ProService proService;
    @Autowired
    private SpanGoodsService spanGoodsService;

    @Autowired
    private SpanTypeService spanTypeService;
    private SpanGoodsEntity spanGoodsEntity;
    @RequestMapping("querySpan")
    public ModelAndView querySpan(Span span, HttpServletRequest request, HttpServletResponse response){
        ModelAndView modelAndView=new ModelAndView("product_center/products_span/list");
        Page<Span> page=spanService.queryTest(span,new Page<Span>(request,response));
        modelAndView.addObject("page",page);

        return modelAndView;

    }

    @RequestMapping("delete")
    public String delete(String[] ids){
        spanService.delete(ids);
        return "redirect:querySpan.do";
    }

//    @RequestMapping("create")
//    public String create(Span span){
//        span.setSpanId(CommonUtil.uuid());
//        spanService.save(span);
//        return "redirect:querySpan.do";
//    }
    @RequestMapping("create")
    public String create(Span span,SpanGoodsEntity spanGoodsEntity){
        span.setSpanId(CommonUtil.uuid());
        spanGoodsEntity.setGoodsId(CommonUtil.uuid());
        spanService.save(span);
        spanGoodsService.save(spanGoodsEntity);
        return "redirect:querySpan.do";
    }


    @RequestMapping("createParent")
    public String createParent(SpanGoodsEntity entity, ModelMap model) throws Exception
    {   model.put("page",spanGoodsService.findList(entity));
//        model.put("page", proService.findList(entity));
        return "product_center/products_span/create-parent";
    }



    @RequestMapping("/look/{id}")
    public String look(@PathVariable String id, ModelMap map){
        map.put("entity",spanService.get(id));
        map.put("page", spanGoodsService.findByGoods(id));
        return "product_center/products_span/look";
    }

    @RequestMapping("/update")
    public String update(Span entity){
        spanService.update(entity);
        return  "redirect:/span/querySpan.do";
    }

    @RequestMapping("/lookData/{id}")
    public String updateSpan(@PathVariable String id, ModelMap map){
        map.put("entity",spanService.get(id));
        map.put("page", spanGoodsService.findByGoods(id));
        map.put("good",spanGoodsService.get(id));
        map.put("type",spanTypeService.get(id));
        return "product_center/products_span/update";
    }



    @RequestMapping("/updateSpan")
    public String updateSpan(Span span, SpanGoodsEntity spanGoodsEntity, SpanTypeEntity spanTypeEntity){

//        span.getSpanId();
//        spanGoodsEntity.getGoodsId();
//        spanTypeEntity.getTypeId();
        spanService.update(span);
        spanGoodsService.update(spanGoodsEntity);
        spanTypeService.update(spanTypeEntity);
        return "redirect:querySpan.do";
    }






//    @RequestMapping("querySpan")
//    public String querySup(Span span, HttpServletRequest request, HttpServletResponse response, ModelMap model){
//        model.put("page",spanGoodsService.findList(spanGoodsEntity));
//        model.put("entity",span);
//        return "product_center/products_span/list";
//    }

}
