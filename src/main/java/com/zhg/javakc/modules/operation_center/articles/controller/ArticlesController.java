package com.zhg.javakc.modules.operation_center.articles.controller;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.util.CommonUtil;
import com.zhg.javakc.modules.operation_center.articles.entity.ArticlesEntity;
import com.zhg.javakc.modules.operation_center.articles.service.ArticlesService;
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
@RequestMapping("/article")
public class ArticlesController {
    @Autowired
    private ArticlesService articlesService;
    @RequestMapping("queryArticle")
    public ModelAndView queryArticle(ArticlesEntity articlesEntity, HttpServletRequest request, HttpServletResponse response){
      ModelAndView modelAndView=new ModelAndView("operation_center/articles/list");
        Page<ArticlesEntity> page=articlesService.queryArticle(articlesEntity,new Page<ArticlesEntity>(request,response));
        modelAndView.addObject("page",page);
        return modelAndView;
    }
    @RequestMapping("/save")
    public String save(ArticlesEntity articlesEntity){
        articlesEntity.setArticleId(CommonUtil.uuid());
        articlesService.save(articlesEntity);
        return "redirect:queryArticle.do";
    }
    @RequestMapping("/view")
    public String view(String ids,ModelMap modelMap){
        ArticlesEntity articlesEntity=articlesService.get(ids);
        modelMap.put("articlesEntity",articlesEntity);
        return "operation_center/articles/update";
    }
    @RequestMapping("/update")
    public String update(ArticlesEntity articlesEntity){
        articlesService.update(articlesEntity);
        return "redirect:queryArticle.do";
    }
    @RequestMapping("/delete")
    public String delete(String[] ids){
        articlesService.delete(ids);
        return "redirect:queryArticle.do";
    }

}
