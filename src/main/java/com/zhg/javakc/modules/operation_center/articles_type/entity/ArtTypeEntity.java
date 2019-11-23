package com.zhg.javakc.modules.operation_center.articles_type.entity;
/**
 *Author:liujun
 *文章分组
 */
import com.zhg.javakc.base.entity.BaseEntity;

import java.sql.Blob;

public class ArtTypeEntity extends BaseEntity<ArtTypeEntity> {
    /**
     *Author:liujun
     *主键
     */
    private String article_type_id;
    /**
     *Author:liujun
     *分组名称
     */
    private String type_name;
    /**
     *Author:liujun
     *预览图
     */
    private Blob type_image;
    /**
     *Author:liujun
     *描述
     */
    private String type_descripe;
    /**
     *Author:liujun
     *分组状态
     */
    private Integer type_status;

    public String getArticle_type_id() {
        return article_type_id;
    }

    public void setArticle_type_id(String article_type_id) {
        this.article_type_id = article_type_id;
    }

    public String getType_name() {
        return type_name;
    }

    public void setType_name(String type_name) {
        this.type_name = type_name;
    }

    public Blob getType_image() {
        return type_image;
    }

    public void setType_image(Blob type_image) {
        this.type_image = type_image;
    }

    public String getType_descripe() {
        return type_descripe;
    }

    public void setType_descripe(String type_descripe) {
        this.type_descripe = type_descripe;
    }

    public Integer getType_status() {
        return type_status;
    }

    public void setType_status(Integer type_status) {
        this.type_status = type_status;
    }
}
