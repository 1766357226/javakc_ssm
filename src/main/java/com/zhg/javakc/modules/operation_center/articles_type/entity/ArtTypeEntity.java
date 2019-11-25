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
    private String articleTypeId;
    /**
     *Author:liujun
     *分组名称
     */
    private String typeName;
    /**
     *Author:liujun
     *预览图
     */
    private Blob typeImage;
    /**
     *Author:liujun
     *描述
     */
    private String typeDescripe;
    /**
     *Author:liujun
     *分组状态
     */
    private Integer typeStatus;

    public String getArticleTypeId() {
        return articleTypeId;
    }

    public void setArticleTypeId(String articleTypeId) {
        this.articleTypeId = articleTypeId;
    }

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }

    public Blob getTypeImage() {
        return typeImage;
    }

    public void setTypeImage(Blob typeImage) {
        this.typeImage = typeImage;
    }

    public String getTypeDescripe() {
        return typeDescripe;
    }

    public void setTypeDescripe(String typeDescripe) {
        this.typeDescripe = typeDescripe;
    }

    public Integer getTypeStatus() {
        return typeStatus;
    }

    public void setTypeStatus(Integer typeStatus) {
        this.typeStatus = typeStatus;
    }
}
