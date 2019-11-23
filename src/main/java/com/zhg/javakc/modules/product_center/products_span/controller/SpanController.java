package com.zhg.javakc.modules.product_center.products_span.controller;


import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.modules.product_center.products_span.entity.Span;
import com.zhg.javakc.modules.product_center.products_span.service.SpanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("/span")
public class SpanController {

    @Autowired
    private SpanService spanService;
    @RequestMapping("querySpan")
    public ModelAndView querySpan(Span span, HttpServletRequest request, HttpServletResponse response){
        ModelAndView modelAndView=new ModelAndView("product_center/products_span/list");
        Page<Span> page=spanService.queryTest(span,new Page<Span>(request,response));
        modelAndView.addObject("page",page);
        return modelAndView;

    }
}
