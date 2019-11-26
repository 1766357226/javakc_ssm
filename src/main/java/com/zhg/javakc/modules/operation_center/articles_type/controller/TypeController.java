package com.zhg.javakc.modules.operation_center.articles_type.controller;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.util.CommonUtil;
import com.zhg.javakc.modules.operation_center.articles_type.entity.ArtTypeEntity;
import com.zhg.javakc.modules.operation_center.articles_type.service.TypeService;
import com.zhg.javakc.modules.test.entity.TestEntity;
import com.zhg.javakc.modules.test.service.TestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("/articles_type")
public class TypeController {
    @Autowired
    private TypeService typeService;
    @RequestMapping("queryArt")
    public ModelAndView queryArt(ArtTypeEntity artTypeEntity, HttpServletRequest request, HttpServletResponse response) {
        ModelAndView modelAndView = new ModelAndView("operation_center/articles_type/list");
        Page<ArtTypeEntity> page = typeService.queryArt(artTypeEntity, new Page<ArtTypeEntity>(request, response));
        modelAndView.addObject("page", page);
        return modelAndView;
    }
    @RequestMapping("/save")
    public String save(ArtTypeEntity artTypeEntity){
        artTypeEntity.setArticleTypeId(CommonUtil.uuid());
        typeService.save(artTypeEntity);
        return "redirect:queryArt.do";
    }
    @RequestMapping("/view")
    public String view(String ids,ModelMap modelMap){
        ArtTypeEntity artTypeEntity=typeService.get(ids);
        modelMap.put("artTypeEntity",artTypeEntity);
        return "operation_center/articles_type/update";
    }
    @RequestMapping("/update")
    public String update(ArtTypeEntity artTypeEntity){
        typeService.update(artTypeEntity);
        return "redirect:queryArt.do";
    }
}