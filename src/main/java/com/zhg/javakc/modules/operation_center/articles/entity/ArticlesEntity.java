package com.zhg.javakc.modules.operation_center.articles.entity;

import com.zhg.javakc.base.entity.BaseEntity;

import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import java.util.List;

public class ArticlesEntity extends BaseEntity<ArticlesEntity> {
    /**
     *Author:liujun
     *主键
     */
    private String articleId;
    /**
     *Author:liujun
     *标题
     */
    private String articleName;
    /**
     *Author:liujun
     *浏览量
     */
    private Integer viewNumber;
    /**
     *Author:liujun
     *状态:0已上架 1待上架 2已下架
     */
    private Integer articleStatus;
    /**
     *Author:liujun
     *文章描述
     */
    private String articleDescripe;
    /**
     *Author:liujun
     *是否推荐0推荐 1不推荐
     */
    private  String ifRecommend;
    /**
     *Author:liujun
     *外键
     */
    // @ManyToMany
    // @JoinTable(
    //    //     中间表
    //    name = "article_cen",
    //         //中间表外键
    //         joinColumns ={
    //            @JoinColumn(name = "articleId")
    //         },
    //         inverseJoinColumns = {
    //            @JoinColumn(name = "articleTypeId")
    //         }
    // )
    // private List<ArticlesEntity> articles;


    public String getArticleId() {
        return articleId;
    }

    public void setArticleId(String articleId) {
        this.articleId = articleId;
    }

    public String getArticleName() {
        return articleName;
    }

    public void setArticleName(String articleName) {
        this.articleName = articleName;
    }

    public Integer getViewNumber() {
        return viewNumber;
    }

    public void setViewNumber(Integer viewNumber) {
        this.viewNumber = viewNumber;
    }

    public Integer getArticleStatus() {
        return articleStatus;
    }

    public void setArticleStatus(Integer articleStatus) {
        this.articleStatus = articleStatus;
    }

    public String getArticleDescripe() {
        return articleDescripe;
    }

    public void setArticleDescripe(String articleDescripe) {
        this.articleDescripe = articleDescripe;
    }

    public String getIfRecommend() {
        return ifRecommend;
    }

    public void setIfRecommend(String ifRecommend) {
        this.ifRecommend = ifRecommend;
    }
}
