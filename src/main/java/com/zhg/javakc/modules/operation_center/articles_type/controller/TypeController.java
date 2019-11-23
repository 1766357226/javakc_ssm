package com.zhg.javakc.modules.operation_center.articles_type.controller;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.modules.operation_center.articles_type.entity.ArtTypeEntity;
import com.zhg.javakc.modules.operation_center.articles_type.service.TypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 *Author:liujun
 *文章分组
 */
@Controller
@RequestMapping("/article")
public class TypeController {
    @Autowired
    private TypeService typeService;
    @RequestMapping("/queryArt")
    public ModelAndView queryArt(ArtTypeEntity artTypeEntity, HttpServletRequest request, HttpServletResponse response){
      ModelAndView modelAndView=new ModelAndView("articles_type/list");
        Page<ArtTypeEntity> page=typeService.queryArt(artTypeEntity,new Page<ArtTypeEntity>(request,response));
        modelAndView.addObject("page",page);
        return modelAndView;
    }
}
