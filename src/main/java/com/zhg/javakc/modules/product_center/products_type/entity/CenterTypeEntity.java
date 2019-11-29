package com.zhg.javakc.modules.product_center.products_type.entity;

import com.zhg.javakc.base.entity.BaseEntity;

public class CenterTypeEntity extends BaseEntity<CenterTypeEntity> {
    private String typeId;
    private String typeName;
    private String  typeParentId;
    private String typeNum;
    private String typeOpen;
    private int  typeOrder;

    public void setTypeOrder(int typeOrder) {
        this.typeOrder = typeOrder;
    }

    public int getTypeOrder() {
        return typeOrder;
    }

    public void setTypeOpen(String typeOpen) {
        this.typeOpen = typeOpen;
    }

    public String getTypeOpen() {
        return typeOpen;
    }

    public String getTypeId() {
        return typeId;
    }

    public String getTypeName() {
        return typeName;
    }

    public String getTypeParentId() {
        return typeParentId;
    }

    public void setTypeId(String typeId) {
        this.typeId = typeId;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }

    public void setTypeParentId(String typeParentId) {
        this.typeParentId = typeParentId;
    }

    public void setTypeNum(String typeNum) {
        this.typeNum = typeNum;
    }

    public String getTypeNum() {
        return typeNum;
    }

    @Override
    public String toString() {
        return "CenterTypeEntity{" +
                "typeId='" + typeId + '\'' +
                ", typeName='" + typeName + '\'' +
                ", typeParentId='" + typeParentId + '\'' +
                ", typeNum='" + typeNum + '\'' +
                ", typeOpen='" + typeOpen + '\'' +
                ", typeOrder=" + typeOrder +
                '}';
    }
}
